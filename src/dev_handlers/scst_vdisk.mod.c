#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
 .name = KBUILD_MODNAME,
 .init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
 .exit = cleanup_module,
#endif
 .arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0x14522340, "module_layout" },
	{ 0x3e6f9ed0, "scst_single_seq_open" },
	{ 0x6db4d885, "blkdev_issue_discard" },
	{ 0xf683630a, "__scst_find_thr_data" },
	{ 0xd3795388, "scst_tg_get_group_info" },
	{ 0x806e575f, "kmem_cache_destroy" },
	{ 0x4f1939c7, "per_cpu__current_task" },
	{ 0x5a34a45c, "__kmalloc" },
	{ 0xd6ee688f, "vmalloc" },
	{ 0x6980fe91, "param_get_int" },
	{ 0x9fbd9e8e, "scst_set_cmd_error" },
	{ 0x25ec1b28, "strlen" },
	{ 0x1a75caa3, "_read_lock" },
	{ 0x5ab0e055, "filemap_write_and_wait_range" },
	{ 0xbbbb4d6f, "scst_calc_block_shift" },
	{ 0xb89938ff, "scst_set_sense" },
	{ 0x55a928c2, "__scst_register_virtual_dev_driver" },
	{ 0xc1d878fa, "single_release" },
	{ 0xd691cba2, "malloc_sizes" },
	{ 0x47c9d107, "blkdev_issue_flush" },
	{ 0x20000329, "simple_strtoul" },
	{ 0x973873ab, "_spin_lock" },
	{ 0x77e93f6f, "seq_printf" },
	{ 0xdeb44871, "scst_impl_alua_configured" },
	{ 0x1a6d6e4f, "remove_proc_entry" },
	{ 0x6f0154d3, "filp_close" },
	{ 0x9413ff6a, "scst_proc_get_dev_type_root" },
	{ 0x3758301, "mutex_unlock" },
	{ 0x999e8297, "vfree" },
	{ 0x79b2de16, "scst_set_busy" },
	{ 0xff964b25, "param_set_int" },
	{ 0x712aa29b, "_spin_lock_irqsave" },
	{ 0x27000b29, "crc32c" },
	{ 0xb72ec8a3, "seq_read" },
	{ 0xc499ae1e, "kstrdup" },
	{ 0x343a1a8, "__list_add" },
	{ 0xe2d5255a, "strcmp" },
	{ 0xda1a7335, "kasprintf" },
	{ 0xccf880f9, "vfs_read" },
	{ 0x3a15614e, "vfs_readv" },
	{ 0xd9a8aae9, "scst_sbc_generic_parse" },
	{ 0xe1fe9f56, "default_llseek" },
	{ 0x8d3894f2, "_ctype" },
	{ 0x944d5135, "mutex_lock_interruptible" },
	{ 0xea147363, "printk" },
	{ 0xd02b8a51, "bio_add_page" },
	{ 0x7ec9bfbc, "strncpy" },
	{ 0xb4390f9a, "mcount" },
	{ 0x2fbdab, "bio_kmalloc" },
	{ 0x7329e40d, "kmem_cache_free" },
	{ 0x16305289, "warn_slowpath_null" },
	{ 0xee1424db, "scst_register_virtual_device" },
	{ 0x6dcaeb88, "per_cpu__kernel_stack" },
	{ 0xfee8a795, "mutex_lock" },
	{ 0x4289dd9c, "bio_get_nr_vecs" },
	{ 0x521445b, "list_del" },
	{ 0x4b07e779, "_spin_unlock_irqrestore" },
	{ 0xffbeec1b, "scst_resume_activity" },
	{ 0x9c61c80b, "scst_proc_log_entry_read" },
	{ 0x3f194fa5, "bio_put" },
	{ 0xaa984eb, "scst_proc_log_entry_write" },
	{ 0x1cd29603, "submit_bio" },
	{ 0x4d017d82, "scst_add_thr_data" },
	{ 0x9d258f, "_write_lock" },
	{ 0xee065ced, "kmem_cache_alloc" },
	{ 0x78764f4e, "pv_irq_ops" },
	{ 0x8388e758, "scst_unregister_virtual_device" },
	{ 0xf0fdf6cb, "__stack_chk_fail" },
	{ 0x13aa23a8, "scst_unregister_virtual_dev_driver" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0xb66ae62e, "scst_capacity_data_changed" },
	{ 0x8c29eb41, "scst_put_buf_full" },
	{ 0x273d1a8a, "debug_print_prefix" },
	{ 0x962f18ee, "scst_suspend_activity" },
	{ 0x2044fa9e, "kmem_cache_alloc_trace" },
	{ 0x8f0c99e6, "vfs_writev" },
	{ 0xdcd1db8, "scst_get_buf_full" },
	{ 0xe4a639f8, "kmem_cache_create" },
	{ 0x10b621bb, "scst_check_local_events" },
	{ 0xea08fbab, "scst_set_resp_data_len" },
	{ 0x5ce19cb4, "scst_dev_del_all_thr_data" },
	{ 0x5ca8e4f6, "seq_lseek" },
	{ 0x37a0cba, "kfree" },
	{ 0x236c8c64, "memcpy" },
	{ 0xad0d8e02, "scst_create_proc_entry" },
	{  0x49001, "scst_del_all_thr_data" },
	{ 0xe24050c7, "scnprintf" },
	{ 0x350ec6, "scst_cdrom_generic_parse" },
	{ 0x9edbecae, "snprintf" },
	{ 0xcc87de6b, "scst_cmd_get" },
	{ 0x1e877f7b, "scst_cmd_put" },
	{ 0xb5ec4c4c, "scst_lookup_tg_id" },
	{ 0x3d6feb37, "scst_mutex" },
	{ 0xe914e41e, "strcpy" },
	{ 0x371af43, "filp_open" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=scst,libcrc32c";


MODULE_INFO(srcversion, "C9A700B115BCA6589EB0EAB");

static const struct rheldata _rheldata __used
__attribute__((section(".rheldata"))) = {
	.rhel_major = 6,
	.rhel_minor = 4,
};
