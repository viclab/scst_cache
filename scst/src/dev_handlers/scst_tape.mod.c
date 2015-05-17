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
	{ 0x4f1939c7, "per_cpu__current_task" },
	{ 0x9fbd9e8e, "scst_set_cmd_error" },
	{ 0x129344f, "scst_tape_generic_parse" },
	{ 0xc1d878fa, "single_release" },
	{ 0xd691cba2, "malloc_sizes" },
	{ 0x1a6d6e4f, "remove_proc_entry" },
	{ 0x9413ff6a, "scst_proc_get_dev_type_root" },
	{ 0xba72d0dc, "scst_tape_generic_dev_done" },
	{ 0xb72ec8a3, "seq_read" },
	{ 0xea147363, "printk" },
	{ 0xb4390f9a, "mcount" },
	{ 0x9c61c80b, "scst_proc_log_entry_read" },
	{ 0xed2dbde0, "__scst_register_dev_driver" },
	{ 0xaa984eb, "scst_proc_log_entry_write" },
	{ 0x2fd45db7, "scsi_test_unit_ready" },
	{ 0x273d1a8a, "debug_print_prefix" },
	{ 0x2044fa9e, "kmem_cache_alloc_trace" },
	{ 0x10b621bb, "scst_check_local_events" },
	{ 0xea08fbab, "scst_set_resp_data_len" },
	{ 0x5ca8e4f6, "seq_lseek" },
	{ 0x37a0cba, "kfree" },
	{ 0xad0d8e02, "scst_create_proc_entry" },
	{ 0xdab42124, "scst_unregister_dev_driver" },
	{ 0xe584f37c, "scsi_mode_sense" },
	{ 0x90083971, "scst_obtain_device_parameters" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=scst";


MODULE_INFO(srcversion, "E6BEC223C9CA1BA36FE1881");

static const struct rheldata _rheldata __used
__attribute__((section(".rheldata"))) = {
	.rhel_major = 6,
	.rhel_minor = 4,
};
