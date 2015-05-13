/*
*  write by yw_raid,
*  use the static to avoid conflict with kernel tree
*  1.lru list operation
*  2.modify __maxindex()`s return type to unsigned long long
*  3.ignore type conversion for unsigned long long to unsigned long
*  4.modify cache_radix_tree_maxindex()`s return type to unsigned long long
*  5.max_path is 0~11,there is a array to record the conversion for 
*    max_index and height.in fact 0~6 is enough, this point should be
*    discussed.
*/

#include <linux/sched.h>
#include <linux/preempt.h>
#include <linux/types.h>
#include <linux/list.h>
#include <linux/spinlock.h>
#include <linux/errno.h>
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/percpu.h>
#include <linux/slab.h>
#include <linux/notifier.h>
#include <linux/cpu.h>
#include <linux/gfp.h>
#include <linux/string.h>
#include <linux/bitops.h>
#include <linux/rcupdate.h>
#include <linux/mm.h>
#include <asm/atomic.h>

#ifndef PAGE_SHIFT
#define PAGE_SHIFT 12
#endif
#ifndef SECTOR_SHIFT
#define SECTOR_SHIFT  9
#endif

#define SECTS_OF_PAGE  (PAGE_SIZE >> SECTOR_SHIFT)

#define CACHE_RADIX_TREE_MAX_TAGS 2

#define CACHE_INVALID    0 
#define CACHE_UPTODATE   1
#define CACHE_DIRTY      2
#define CACHE_LOCKED     3


#define CACHE_CAPACITY_SHIFT 21
#define CACHE_CAPACITY  (1UL << CACHE_CAPACITY_SHIFT)
#define MAX_COUNT_OF_CACHE (CACHE_CAPACITY >> PAGE_SHIFT)

#define CACHE_CAPACITY_SHIFT_R 28
#define CACHE_CAPACITY_R  (1UL << CACHE_CAPACITY_SHIFT_R)
#define MAX_COUNT_OF_CACHE_R (CACHE_CAPACITY_R>> PAGE_SHIFT)


struct vdisk_dev_cache
{
	u32 read_cache_status;
	u32 write_cache_status;
	atomic_t read_cache_count ;
	atomic_t write_cache_count;
	struct list_head *read_cache_list_head;
    struct list_head *write_cache_list_head;
    struct mutex flushio_lock;
    rwlock_t read_list_lock;
    rwlock_t write_list_lock;
    rwlock_t radix_tree_lock;
	struct cache_radix_tree_root *dev_cache_tree_root;	
};

struct __vdisk_cache
{
	unsigned long lba_align;
	unsigned long cache_flags;
	struct page *page;
	spinlock_t cache_lock;
	struct list_head lru_list_entry;
};
typedef struct __vdisk_cache vdisk_cache;

struct cache_radix_tree_root {
	unsigned int		height;
	gfp_t			gfp_mask;
	struct cache_radix_tree_node	*rnode;
};
struct blockio_cache_to_copy
{
	int len_to_copy;
	int num_of_sg;
	vdisk_cache *cache_to_copy;
	struct page *page_to_copy;
	struct list_head read_cache_list_entry;
};

#define CACHE_RADIX_TREE_INIT(mask)	{					\
	.height = 0,							\
	.gfp_mask = (mask),						\
	.rnode = NULL,							\
}

#define CACHE_RADIX_TREE(name, mask) \
	struct cache_radix_tree_root name = CACHE_RADIX_TREE_INIT(mask)

#define INIT_CACHE_RADIX_TREE(root, mask)					\
do {									\
	(root)->height = 0;						\
	(root)->gfp_mask = (mask);					\
	(root)->rnode = NULL;						\
} while (0)

#define CACHE_RADIX_TREE_MAP_SHIFT 6
#define BITS_PER_LONG 32
#define CACHE_RADIX_TREE_MAP_SIZE	(1UL << CACHE_RADIX_TREE_MAP_SHIFT)
#define CACHE_RADIX_TREE_MAP_MASK	(CACHE_RADIX_TREE_MAP_SIZE-1)
#define CACHE_RADIX_TREE_TAG_LONGS	\
	((CACHE_RADIX_TREE_MAP_SIZE + BITS_PER_LONG - 1) / BITS_PER_LONG)
#define CACHE_RADIX_TREE_INDEX_BITS  (8 * sizeof(unsigned long)) //8 is CHAR_BIT
#define CACHE_RADIX_TREE_MAX_PATH (CACHE_RADIX_TREE_INDEX_BITS/CACHE_RADIX_TREE_MAP_SHIFT + 2) //max is 12
#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))


struct cache_radix_tree_node {
	unsigned int	height;
	unsigned int	count;
	void		*slots[CACHE_RADIX_TREE_MAP_SIZE];
	unsigned long	tags[CACHE_RADIX_TREE_MAX_TAGS][CACHE_RADIX_TREE_TAG_LONGS];
};

struct cache_radix_tree_path {
	struct cache_radix_tree_node *node;
	int offset;
};

static unsigned long  height_to_maxindex[CACHE_RADIX_TREE_MAX_PATH];
static struct kmem_cache *cache_radix_tree_node_cachep;


void insert_cache_in_lrulist(vdisk_cache *cachep, struct list_head *lru_list_head);
void delete_cache_in_lrulist(struct list_head *lru_list_head);
void move_cache_in_lrulist(struct list_head *list, struct list_head *lru_list_head_2);
void adjust_cache_in_lrulist(struct list_head *lru_list_head, vdisk_cache *cachep);
int is_cache_full(atomic_t count);
int is_cache_full_r(atomic_t count);
vdisk_cache *alloc_cache_struct(unsigned long lba_align, struct page *page);
void *cache_radix_tree_tag_clear(struct cache_radix_tree_root *root, unsigned long index, unsigned int tag);
int cache_radix_tree_tagged(struct cache_radix_tree_root *root, unsigned int tag);
void *delete_cache_in_tree(struct cache_radix_tree_root *root, unsigned long index);
void *cache_radix_tree_tag_set(struct cache_radix_tree_root *root, unsigned long index, unsigned int tag);
int insert_cache_in_tree(struct cache_radix_tree_root *root, unsigned long index, void *item);
vdisk_cache *lookup_cache_in_tree(struct cache_radix_tree_root *root,  unsigned long index);
struct cache_radix_tree_node *lookup_node_in_tree(struct cache_radix_tree_root *root, unsigned long index);
void cache_radix_tree_init(void);
void cache_radix_tree_destory(void);

//void cache_radix_tree_node_ctor(void *node, struct kmem_cache *cachep, unsigned long flags);
//void cache_radix_tree_init_maxindex(void);



void  insert_cache_in_lrulist(vdisk_cache *cachep, struct list_head *lru_list_head)
{
	list_add(&cachep->lru_list_entry, lru_list_head);
}

void  delete_cache_in_lrulist(struct list_head *lru_list_head)
{
	if(unlikely (list_empty(lru_list_head)))
	{	
		printk("there is a bug! can not delete the empty list!!\n");
				
	}
	list_del(lru_list_head->prev);		
}

void  move_cache_in_lrulist(struct list_head *list, struct list_head *lru_list_head_2)
{
	list_move(list, lru_list_head_2);
	
}

void  adjust_cache_in_lrulist(struct list_head *lru_list_head, vdisk_cache *cachep)
{
	vdisk_cache *pos;
	list_for_each_entry(pos, lru_list_head, lru_list_entry)
	{
		if(pos->lba_align == cachep->lba_align)
		{
			break;
		}
	}
	list_move(&pos->lru_list_entry, lru_list_head);
}

int is_cache_full(atomic_t count)
{	
	if(atomic_read(&count) >= (int)MAX_COUNT_OF_CACHE)
		return 1;
	else
		return 0;
		
}

int is_cache_full_r(atomic_t count)
{
	if(atomic_read(&count) >= (int)MAX_COUNT_OF_CACHE_R)
		return 1;
	else
		return 0;
}

vdisk_cache *alloc_cache_struct(unsigned long lba_align, struct page *page)
{
	vdisk_cache *vdisk_cache_new;

	vdisk_cache_new = (vdisk_cache *)kmalloc(sizeof(vdisk_cache), GFP_KERNEL);
	if(!vdisk_cache_new)
		printk("alloc cache struct failed !\n");
	vdisk_cache_new->lba_align = lba_align;
	vdisk_cache_new->page = page;
	vdisk_cache_new->cache_flags = 0;
	vdisk_cache_new->cache_lock = SPIN_LOCK_UNLOCKED;
	return vdisk_cache_new;

}
static void cache_radix_tree_node_ctor(void *node, struct kmem_cache *cachep, unsigned long flags)
{
	memset(node, 0, sizeof(struct cache_radix_tree_node));
}

static unsigned long long __maxindex(unsigned int height)
{
	unsigned int tmp = height * CACHE_RADIX_TREE_MAP_SHIFT;
	unsigned long long index = (~0UL >> (CACHE_RADIX_TREE_INDEX_BITS - tmp - 1)) >> 1;

	if (tmp >= CACHE_RADIX_TREE_INDEX_BITS)
		index = ~0UL;
	return index;
}
static inline unsigned long long cache_radix_tree_maxindex(unsigned int height)
{
	return height_to_maxindex[height];
}

static void cache_radix_tree_init_maxindex(void)
{
	unsigned int i;

	for (i = 0; i < ARRAY_SIZE(height_to_maxindex); i++)
		height_to_maxindex[i] = __maxindex(i);
}

static inline void tag_set(struct cache_radix_tree_node *node, unsigned int tag,
		int offset)
{
	__set_bit(offset, node->tags[tag]);
}

static inline void tag_clear(struct cache_radix_tree_node *node, unsigned int tag,
		int offset)
{
	__clear_bit(offset, node->tags[tag]);
}

static inline int tag_get(struct cache_radix_tree_node *node, unsigned int tag,
		int offset)
{
	return test_bit(offset, node->tags[tag]);
}

static inline void root_tag_set(struct cache_radix_tree_root *root, unsigned int tag)
{
	root->gfp_mask |= (1 << (tag + __GFP_BITS_SHIFT));
}


static inline void root_tag_clear(struct cache_radix_tree_root *root, unsigned int tag)
{
	root->gfp_mask &= ~(1 << (tag + __GFP_BITS_SHIFT));
}

static inline void root_tag_clear_all(struct cache_radix_tree_root *root)
{
	root->gfp_mask &= __GFP_BITS_MASK;
}

static inline int root_tag_get(struct cache_radix_tree_root *root, unsigned int tag)
{
	return root->gfp_mask & (1 << (tag + __GFP_BITS_SHIFT));
}

/*
 * Returns 1 if any slot in the node has this tag set.
 * Otherwise returns 0.
 */
static inline int any_tag_set(struct cache_radix_tree_node *node, unsigned int tag)
{
	int idx;
	for (idx = 0; idx < (int)CACHE_RADIX_TREE_TAG_LONGS; idx++) {
		if (node->tags[tag][idx])
			return 1;
	}
	return 0;
}

static inline gfp_t root_gfp_mask(struct cache_radix_tree_root *root)
{
	return root->gfp_mask & __GFP_BITS_MASK;
}

static struct cache_radix_tree_node *cache_radix_tree_node_alloc(struct cache_radix_tree_root *root)
{
	struct cache_radix_tree_node *ret;
	gfp_t gfp_mask = root_gfp_mask(root);

	ret = kmem_cache_alloc(cache_radix_tree_node_cachep, gfp_mask);
	if (ret == NULL)
	{
		printk("alloc cache_radix_tree node failed!\n");
		return NULL;
	}
	return ret;
}
static inline void
cache_radix_tree_node_free(struct cache_radix_tree_node *node)
{
	kmem_cache_free(cache_radix_tree_node_cachep, node);
}

static inline void **__lookup_slot(struct cache_radix_tree_root *root,
				   unsigned long index)
{
	unsigned int height, shift;
	struct cache_radix_tree_node **slot;

	height = root->height;

	if (index > cache_radix_tree_maxindex(height))
		return NULL;

	if (height == 0 && root->rnode)
		return (void **)&root->rnode;

	shift = (height-1) * CACHE_RADIX_TREE_MAP_SHIFT;
	slot = &root->rnode;

	while (height > 0) {
		if (*slot == NULL)
			return NULL;

		slot = (struct cache_radix_tree_node **)
			((*slot)->slots +
				((index >> shift) & CACHE_RADIX_TREE_MAP_MASK));
		shift -= CACHE_RADIX_TREE_MAP_SHIFT;
		height--;
	}

	return (void **)slot;
}

static inline void ** __lookup_node(struct cache_radix_tree_root * root, unsigned long index)
{
	unsigned int height, shift;
	struct cache_radix_tree_node **slot;

	height = root->height;

	if (index > cache_radix_tree_maxindex(height))
		return NULL;

	if (height == 0 && root->rnode)
		return (void **)&root->rnode;

	shift = (height-1) * CACHE_RADIX_TREE_MAP_SHIFT;
	slot = &root->rnode;

	while (height > 1) {
		if (*slot == NULL)
			return NULL;

		slot = (struct cache_radix_tree_node **)
			((*slot)->slots +
				((index >> shift) & CACHE_RADIX_TREE_MAP_MASK));
		shift -= CACHE_RADIX_TREE_MAP_SHIFT;
		height--;
	}
	return (void **)slot;
}

static void *cache_radix_tree_prefetch_node(struct cache_radix_tree_root *root, unsigned long index)
{
	void **node;
	node = __lookup_node(root,index);
	return node != NULL ? *node : NULL;
}

static void *cache_radix_tree_lookup(struct cache_radix_tree_root *root, unsigned long index)
{
	void **slot;

	slot = __lookup_slot(root, index);
	return slot != NULL ? *slot : NULL;
}



static int cache_radix_tree_extend(struct cache_radix_tree_root *root, unsigned long index)
{
	struct cache_radix_tree_node *node;
	unsigned int height;
	int tag;

	/* Figure out what the height should be.  */
	height = root->height + 1;
	while (index > cache_radix_tree_maxindex(height))
		height++;

	if (root->rnode == NULL) {
		root->height = height;
		goto out;
	}

	do {
		if (!(node = cache_radix_tree_node_alloc(root)))
			return -ENOMEM;

		/* Increase the height.  */
		node->slots[0] = root->rnode;

		/* Propagate the aggregated tag info into the new root */
		for (tag = 0; tag < CACHE_RADIX_TREE_MAX_TAGS; tag++) {
			if (root_tag_get(root, tag))
				tag_set(node, tag, 0);
		}

		node->count = 1;
		root->rnode = node;
		root->height++;
	} while (height > root->height);
out:
	return 0;
}


static inline void cache_radix_tree_shrink(struct cache_radix_tree_root *root)
{
	/* try to shrink tree height */
	while (root->height > 0 &&
			root->rnode->count == 1 &&
			root->rnode->slots[0]) {
		struct cache_radix_tree_node *to_free = root->rnode;

		root->rnode = to_free->slots[0];
		root->height--;
		/* must only free zeroed nodes into the slab */
		tag_clear(to_free, 0, 0);
		tag_clear(to_free, 1, 0);
		to_free->slots[0] = NULL;
		to_free->count = 0;
		cache_radix_tree_node_free(to_free);
	}
}


void *cache_radix_tree_tag_clear(struct cache_radix_tree_root *root,
			unsigned long index, unsigned int tag)
{
	struct cache_radix_tree_path path[CACHE_RADIX_TREE_MAX_PATH], *pathp = path;
	struct cache_radix_tree_node *slot = NULL;
	unsigned int height, shift;

	height = root->height;
	if (index > cache_radix_tree_maxindex(height))
		goto out;

	shift = (height - 1) * CACHE_RADIX_TREE_MAP_SHIFT;
	pathp->node = NULL;
	slot = root->rnode;

	while (height > 0) {
		int offset;

		if (slot == NULL)
			goto out;

		offset = (index >> shift) & CACHE_RADIX_TREE_MAP_MASK;
		pathp[1].offset = offset;
		pathp[1].node = slot;
		slot = slot->slots[offset];
		pathp++;
		shift -= CACHE_RADIX_TREE_MAP_SHIFT;
		height--;
	}

	if (slot == NULL)
		goto out;

	while (pathp->node) {
		if (!tag_get(pathp->node, tag, pathp->offset))
			goto out;
		tag_clear(pathp->node, tag, pathp->offset);
		if (any_tag_set(pathp->node, tag))
			goto out;
		pathp--;
	}

	/* clear the root's tag bit */
	if (root_tag_get(root, tag))
		root_tag_clear(root, tag);

out:
	return slot;
}

int cache_radix_tree_tagged(struct cache_radix_tree_root *root, unsigned int tag)
{
	return root_tag_get(root, tag);
}

void *delete_cache_in_tree(struct cache_radix_tree_root *root, unsigned long index)
{
	struct cache_radix_tree_path path[CACHE_RADIX_TREE_MAX_PATH], *pathp = path;
	struct cache_radix_tree_node *slot = NULL;
	unsigned int height, shift;
	int tag;
	int offset;

	height = root->height;
	if (index > cache_radix_tree_maxindex(height))
		goto out;

	slot = root->rnode;
	if (height == 0 && root->rnode) {
		root_tag_clear_all(root);
		root->rnode = NULL;
		goto out;
	}

	shift = (height - 1) * CACHE_RADIX_TREE_MAP_SHIFT;
	pathp->node = NULL;

	do {
		if (slot == NULL)
			goto out;

		pathp++;
		offset = (index >> shift) & CACHE_RADIX_TREE_MAP_MASK;
		pathp->offset = offset;
		pathp->node = slot;
		slot = slot->slots[offset];
		shift -= CACHE_RADIX_TREE_MAP_SHIFT;
		height--;
	} while (height > 0);

	if (slot == NULL)
		goto out;

	/*
	 * Clear all tags associated with the just-deleted item
	 */
	for (tag = 0; tag < CACHE_RADIX_TREE_MAX_TAGS; tag++) {
		if (tag_get(pathp->node, tag, pathp->offset))
			cache_radix_tree_tag_clear(root, index, tag);
	}

	/* Now free the nodes we do not need anymore */
	while (pathp->node) {
		pathp->node->slots[pathp->offset] = NULL;
		pathp->node->count--;

		if (pathp->node->count) {
			if (pathp->node == root->rnode)//the most important in this function
				cache_radix_tree_shrink(root);
			goto out;
		}

		/* Node with zero slots in use so free it */
		cache_radix_tree_node_free(pathp->node);
		pathp--;
	}
	root_tag_clear_all(root);
	root->height = 0;
	root->rnode = NULL;

out:
	return slot;
}

void *cache_radix_tree_tag_set(struct cache_radix_tree_root *root,
			unsigned long index, unsigned int tag)
{
	unsigned int height, shift;
	struct cache_radix_tree_node *slot;

	height = root->height;
	BUG_ON(index > cache_radix_tree_maxindex(height));

	slot = root->rnode;
	shift = (height - 1) * CACHE_RADIX_TREE_MAP_SHIFT;

	while (height > 0) {
		int offset;

		offset = (index >> shift) & CACHE_RADIX_TREE_MAP_MASK;
		if (!tag_get(slot, tag, offset))
			tag_set(slot, tag, offset);
		slot = slot->slots[offset];
		BUG_ON(slot == NULL);
		shift -= CACHE_RADIX_TREE_MAP_SHIFT;
		height--;
	}

	/* set the root's tag bit */
	if (slot && !root_tag_get(root, tag))
		root_tag_set(root, tag);

	return slot;
}

int insert_cache_in_tree(struct cache_radix_tree_root *root,
			unsigned long index, void *item)
{
	struct cache_radix_tree_node *node = NULL;
	struct cache_radix_tree_node *slot;
	unsigned int height, shift;
	int offset;
	int error;

	/* Make sure the tree is high enough.  */
	if (index > cache_radix_tree_maxindex(root->height)) {
		error = cache_radix_tree_extend(root, index);
		if (error)
			return error;
	}

	slot = root->rnode;
	height = root->height;
	shift = (height-1) * CACHE_RADIX_TREE_MAP_SHIFT;

	offset = 0;			/* uninitialised var warning */
	while (height > 0) {
		if (slot == NULL) {
			/* Have to add a child node.  */
			if (!(slot = cache_radix_tree_node_alloc(root)))
				return -ENOMEM;
			if (node) {
				node->slots[offset] = slot;
				node->count++;
			} else
				root->rnode = slot;
		}

		/* Go a level down */
		offset = (index >> shift) & CACHE_RADIX_TREE_MAP_MASK;
		node = slot;
		slot = node->slots[offset];
		shift -= CACHE_RADIX_TREE_MAP_SHIFT;
		height--;
	}

	if (slot != NULL)
		return -EEXIST;

	if (node) {
		node->count++;
		node->slots[offset] = item;
		BUG_ON(tag_get(node, 0, offset));
		BUG_ON(tag_get(node, 1, offset));
	} else {
		root->rnode = item;
		BUG_ON(root_tag_get(root, 0));
		BUG_ON(root_tag_get(root, 1));
	}

	return 0;
}

vdisk_cache *lookup_cache_in_tree(struct cache_radix_tree_root *root, 
										unsigned long index)
{
	vdisk_cache *cachep;
	cachep = cache_radix_tree_lookup(root,index);
	return cachep;
}
struct cache_radix_tree_node *lookup_node_in_tree(struct cache_radix_tree_root *root, unsigned long index)
{
	struct cache_radix_tree_node *node;
	node = cache_radix_tree_prefetch_node(root,index);
	return node;
}

void cache_radix_tree_init(void)
{
	cache_radix_tree_node_cachep = kmem_cache_create("cache_radix_tree_node",
			sizeof(struct cache_radix_tree_node), 0,
			SLAB_PANIC, cache_radix_tree_node_ctor, NULL);
	if(cache_radix_tree_node_cachep)
	{
		printk("*******cache_radix_tree_node_cachep is not NULL*******\n");
	}
	cache_radix_tree_init_maxindex();
	//hotcpu_notifier(cache_radix_tree_callback, 0);
}


void cache_radix_tree_destory(void)
{	
	printk("****cache_radix_tree_destory begin****\n");
	kmem_cache_destroy(cache_radix_tree_node_cachep);
	
	printk("****cache_radix_tree_destory end****\n");
}




