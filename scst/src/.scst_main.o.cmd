cmd_/mnt/hgfs/scst_cache/scst/src/scst_main.o := gcc -Wp,-MD,/mnt/hgfs/scst_cache/scst/src/.scst_main.o.d  -nostdinc -isystem /usr/lib/gcc/i686-redhat-linux/4.4.7/include -Iinclude  -I/usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include -include include/linux/autoconf.h -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -m32 -msoft-float -mregparm=3 -freg-struct-return -mpreferred-stack-boundary=2 -march=i686 -mtune=generic -Wa,-mtune=generic32 -ffreestanding -fstack-protector -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1 -pipe -Wno-sign-compare -fno-asynchronous-unwind-tables -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -Wframe-larger-than=1024 -Wno-unused-but-set-variable -fomit-frame-pointer -g -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fno-dwarf2-cfi-asm -fconserve-stack -I/mnt/hgfs/scst_cache/scst/src/../include -Wextra -Wno-unused-parameter -Wno-missing-field-initializers -DCONFIG_SCST_EXTRACHECKS -DCONFIG_SCST_DEBUG -g -fno-inline -fno-inline-functions  -DMODULE -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(scst_main)"  -D"KBUILD_MODNAME=KBUILD_STR(scst)" -D"DEBUG_HASH=57" -D"DEBUG_HASH2=28" -c -o /mnt/hgfs/scst_cache/scst/src/.tmp_scst_main.o /mnt/hgfs/scst_cache/scst/src/scst_main.c

deps_/mnt/hgfs/scst_cache/scst/src/scst_main.o := \
  /mnt/hgfs/scst_cache/scst/src/scst_main.c \
    $(wildcard include/config/highmem4g.h) \
    $(wildcard include/config/highmem64g.h) \
    $(wildcard include/config/scst/strict/serializing.h) \
    $(wildcard include/config/scst/proc.h) \
    $(wildcard include/config/scst/debug.h) \
    $(wildcard include/config/scst/tracing.h) \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/scst/extrachecks.h) \
    $(wildcard include/config/scst/debug/tm.h) \
    $(wildcard include/config/scst/debug/retry.h) \
    $(wildcard include/config/scst/debug/oom.h) \
    $(wildcard include/config/scst/debug/sn.h) \
    $(wildcard include/config/scst/use/expected/values.h) \
    $(wildcard include/config/scst/test/io/in/sirq.h) \
    $(wildcard include/config/scst/strict/security.h) \
  include/linux/module.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/sysfs.h) \
  include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/types.h \
  include/asm-generic/types.h \
  include/asm-generic/int-ll64.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/x86/32.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/posix_types_32.h \
  include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  include/linux/prefetch.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/processor.h \
    $(wildcard include/config/x86/vsmp.h) \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/paravirt.h) \
    $(wildcard include/config/m386.h) \
    $(wildcard include/config/m486.h) \
    $(wildcard include/config/x86/debugctlmsr.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/processor-flags.h \
    $(wildcard include/config/vm86.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/vm86.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/ptrace.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/ptrace-abi.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/segment.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/page_types.h \
  include/linux/const.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/page_32_types.h \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/4kstacks.h) \
    $(wildcard include/config/x86/pae.h) \
  include/linux/init.h \
    $(wildcard include/config/hotplug.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/math_emu.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/sigcontext.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/current.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/percpu.h \
    $(wildcard include/config/x86/64/smp.h) \
  include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/spinlock/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/compaction.h) \
  /usr/lib/gcc/i686-redhat-linux/4.4.7/include/stdarg.h \
  include/linux/linkage.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/linkage.h \
    $(wildcard include/config/x86/alignment/16.h) \
  include/linux/stringify.h \
  include/linux/bitops.h \
    $(wildcard include/config/generic/find/first/bit.h) \
    $(wildcard include/config/generic/find/last/bit.h) \
    $(wildcard include/config/generic/find/next/bit.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/bitops.h \
    $(wildcard include/config/x86/cmov.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/alternative.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/asm.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/cpufeature.h \
    $(wildcard include/config/x86/invlpg.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/required-features.h \
    $(wildcard include/config/x86/minimum/cpu/family.h) \
    $(wildcard include/config/math/emulation.h) \
    $(wildcard include/config/x86/cmpxchg64.h) \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/x86/p6/nop.h) \
  include/asm-generic/bitops/sched.h \
  include/asm-generic/bitops/hweight.h \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/ext2-non-atomic.h \
  include/asm-generic/bitops/le.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/swab.h \
    $(wildcard include/config/x86/bswap.h) \
  include/linux/byteorder/generic.h \
  include/asm-generic/bitops/minix.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/typecheck.h \
  include/linux/ratelimit.h \
  include/linux/param.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/param.h \
  include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  include/linux/dynamic_debug.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/div64.h \
  include/asm-generic/percpu.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/system.h \
    $(wildcard include/config/ia32/emulation.h) \
    $(wildcard include/config/x86/32/lazy/gs.h) \
    $(wildcard include/config/x86/ppro/fence.h) \
    $(wildcard include/config/x86/oostore.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/cmpxchg.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/cmpxchg_32.h \
    $(wildcard include/config/x86/cmpxchg.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/nops.h \
    $(wildcard include/config/mk7.h) \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
    $(wildcard include/config/x86.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/irqflags.h \
    $(wildcard include/config/debug/lock/alloc.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/paravirt.h \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/paravirt/spinlocks.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/pgtable_types.h \
    $(wildcard include/config/kmemcheck.h) \
    $(wildcard include/config/compat/vdso.h) \
    $(wildcard include/config/proc/fs.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/pgtable_32_types.h \
    $(wildcard include/config/highmem.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/pgtable-3level_types.h \
  include/asm-generic/pgtable-nopud.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/paravirt_types.h \
    $(wildcard include/config/x86/local/apic.h) \
    $(wildcard include/config/paravirt/debug.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/desc_defs.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/kmap_types.h \
    $(wildcard include/config/debug/highmem.h) \
  include/asm-generic/kmap_types.h \
  include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  include/linux/bitmap.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/string.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/string_32.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/page.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/page_32.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/x86/3dnow.h) \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  include/asm-generic/getorder.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/msr.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/msr-index.h \
  include/linux/ioctl.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/ioctl.h \
  include/asm-generic/ioctl.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/errno.h \
  include/asm-generic/errno.h \
  include/asm-generic/errno-base.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/cpumask.h \
  include/linux/personality.h \
  include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
  include/linux/math64.h \
  include/linux/err.h \
  include/linux/stat.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/stat.h \
  include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  include/linux/seqlock.h \
  include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
  include/linux/preempt.h \
    $(wildcard include/config/preempt/notifiers.h) \
  include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/thread_info.h \
    $(wildcard include/config/debug/stack/usage.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/ftrace.h \
    $(wildcard include/config/function/tracer.h) \
    $(wildcard include/config/dynamic/ftrace.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/atomic.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/atomic_32.h \
  include/asm-generic/atomic-long.h \
  include/linux/bottom_half.h \
  include/linux/spinlock_types.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/spinlock_types.h \
  include/linux/lockdep.h \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/generic/hardirqs.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/spinlock.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/rwlock.h \
  include/linux/spinlock_api_smp.h \
  include/linux/kmod.h \
  include/linux/gfp.h \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/debug/vm.h) \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/arch/populates/node/map.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/cgroup/mem/res/ctlr.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  include/linux/wait.h \
  include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  include/linux/nodemask.h \
  include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/linux/bounds.h \
  include/linux/memory_hotplug.h \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/memory/hotremove.h) \
  include/linux/notifier.h \
  include/linux/errno.h \
  include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/have/arch/mutex/cpu/relax.h) \
  include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/rwsem.h \
  include/linux/srcu.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/sparsemem.h \
  include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
  include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/smp.h \
    $(wildcard include/config/x86/io/apic.h) \
    $(wildcard include/config/x86/32/smp.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/mpspec.h \
    $(wildcard include/config/x86/numaq.h) \
    $(wildcard include/config/mca.h) \
    $(wildcard include/config/eisa.h) \
    $(wildcard include/config/x86/mpparse.h) \
    $(wildcard include/config/acpi.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/mpspec_def.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/x86_init.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/bootparam.h \
  include/linux/screen_info.h \
  include/linux/apm_bios.h \
  include/linux/edd.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/e820.h \
    $(wildcard include/config/efi.h) \
    $(wildcard include/config/intel/txt.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/memtest.h) \
  include/linux/ioport.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/ist.h \
  include/video/edid.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/apic.h \
    $(wildcard include/config/x86/x2apic.h) \
  include/linux/delay.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/delay.h \
  include/linux/pm.h \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/ppc/pseries.h) \
    $(wildcard include/config/pm/runtime.h) \
  include/linux/workqueue.h \
  include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  include/linux/jiffies.h \
  include/linux/timex.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/timex.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/tsc.h \
    $(wildcard include/config/x86/tsc.h) \
  include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  include/linux/completion.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/apicdef.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/fixmap.h \
    $(wildcard include/config/provide/ohci1394/dma/init.h) \
    $(wildcard include/config/x86/visws/apic.h) \
    $(wildcard include/config/x86/f00f/bug.h) \
    $(wildcard include/config/x86/cyclone/timer.h) \
    $(wildcard include/config/pci/mmconfig.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/acpi.h \
    $(wildcard include/config/acpi/numa.h) \
  include/acpi/pdc_intel.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/numa.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/numa_32.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/mmu.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/io_apic.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/irq_vectors.h \
    $(wildcard include/config/xen.h) \
    $(wildcard include/config/sparse/irq.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/topology.h \
    $(wildcard include/config/x86/ht.h) \
    $(wildcard include/config/x86/64/acpi/numa.h) \
  include/asm-generic/topology.h \
  include/linux/mmdebug.h \
  include/linux/sysctl.h \
  include/linux/elf.h \
  include/linux/elf-em.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/elf.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/user.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/user_32.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/auxvec.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/vdso.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/desc.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/ldt.h \
  include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/want/page/debug/flags.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mm/owner.h) \
    $(wildcard include/config/mmu/notifier.h) \
  include/linux/auxvec.h \
  include/linux/prio_tree.h \
  include/linux/rbtree.h \
  include/linux/page-debug-flags.h \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/page/debug/something/else.h) \
  include/linux/kobject.h \
  include/linux/sysfs.h \
  include/linux/kref.h \
  include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  include/linux/tracepoint.h \
  include/linux/rcupdate.h \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/tree/rcu.h) \
  include/linux/rcutree.h \
    $(wildcard include/config/no/hz.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/local.h \
  include/linux/percpu.h \
    $(wildcard include/config/have/legacy/per/cpu/area.h) \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/debug/kmemleak.h) \
  include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/debug/slab.h) \
  include/linux/slab_def.h \
    $(wildcard include/config/kmemtrace.h) \
  include/linux/kmemtrace.h \
  include/trace/events/kmem.h \
  include/linux/fs.h \
    $(wildcard include/config/dnotify.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/inotify.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/debug/writecount.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/fs/xip.h) \
    $(wildcard include/config/migration.h) \
  include/linux/limits.h \
  include/linux/blk_types.h \
  include/linux/kdev_t.h \
  include/linux/dcache.h \
  include/linux/rculist.h \
  include/linux/path.h \
  include/linux/radix-tree.h \
  include/linux/pid.h \
  include/linux/capability.h \
    $(wildcard include/config/security/file/capabilities.h) \
  include/linux/semaphore.h \
  include/linux/fiemap.h \
  include/linux/percpu_counter.h \
  include/linux/percpu-rwsem.h \
  include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  include/linux/dqblk_xfs.h \
  include/linux/dqblk_v1.h \
  include/linux/dqblk_v2.h \
  include/linux/dqblk_qtree.h \
  include/linux/nfs_fs_i.h \
  include/linux/nfs.h \
  include/linux/sunrpc/msg_prot.h \
  include/linux/inet.h \
  include/linux/fcntl.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/fcntl.h \
  include/asm-generic/fcntl.h \
  include/trace/define_trace.h \
  include/linux/kmalloc_sizes.h \
  include/linux/pfn.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/module.h \
    $(wildcard include/config/m586.h) \
    $(wildcard include/config/m586tsc.h) \
    $(wildcard include/config/m586mmx.h) \
    $(wildcard include/config/mcore2.h) \
    $(wildcard include/config/matom.h) \
    $(wildcard include/config/m686.h) \
    $(wildcard include/config/mpentiumii.h) \
    $(wildcard include/config/mpentiumiii.h) \
    $(wildcard include/config/mpentiumm.h) \
    $(wildcard include/config/mpentium4.h) \
    $(wildcard include/config/mk6.h) \
    $(wildcard include/config/mk8.h) \
    $(wildcard include/config/x86/elan.h) \
    $(wildcard include/config/mcrusoe.h) \
    $(wildcard include/config/mefficeon.h) \
    $(wildcard include/config/mwinchipc6.h) \
    $(wildcard include/config/mwinchip3d.h) \
    $(wildcard include/config/mcyrixiii.h) \
    $(wildcard include/config/mviac3/2.h) \
    $(wildcard include/config/mviac7.h) \
    $(wildcard include/config/mgeodegx1.h) \
    $(wildcard include/config/mgeode/lx.h) \
  include/asm-generic/module.h \
  include/trace/events/module.h \
  include/linux/sched.h \
    $(wildcard include/config/sched/debug.h) \
    $(wildcard include/config/lockup/detector.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/sched/autogroup.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/user/sched.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/utrace.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/cfs/bandwidth.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/group/sched.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/cputime.h \
  include/asm-generic/cputime.h \
  include/linux/sem.h \
  include/linux/ipc.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/ipcbuf.h \
  include/asm-generic/ipcbuf.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/sembuf.h \
  include/linux/signal.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/signal.h \
  include/asm-generic/signal-defs.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/siginfo.h \
  include/asm-generic/siginfo.h \
  include/linux/proportions.h \
  include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
  include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  include/linux/resource.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/resource.h \
  include/asm-generic/resource.h \
  include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/timerfd.h) \
  include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  include/linux/latencytop.h \
  include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
  include/linux/key.h \
    $(wildcard include/config/sysctl.h) \
  include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  include/linux/aio.h \
  include/linux/aio_abi.h \
  include/linux/uio.h \
  include/linux/unistd.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/unistd.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/unistd_32.h \
  include/linux/kthread.h \
  /mnt/hgfs/scst_cache/scst/src/../include/scst.h \
    $(wildcard include/config/scst/measure/latency.h) \
    $(wildcard include/config/debug/sg.h) \
  include/linux/version.h \
  include/linux/blkdev.h \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/blk/dev/bsg.h) \
    $(wildcard include/config/blk/dev/throttling.h) \
    $(wildcard include/config/bounce.h) \
    $(wildcard include/config/blk/dev/integrity.h) \
  include/linux/major.h \
  include/linux/genhd.h \
    $(wildcard include/config/fail/make/request.h) \
    $(wildcard include/config/solaris/x86/partition.h) \
    $(wildcard include/config/bsd/disklabel.h) \
    $(wildcard include/config/unixware/disklabel.h) \
    $(wildcard include/config/minix/subpartition.h) \
  include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/devtmpfs.h) \
  include/linux/klist.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/device.h \
    $(wildcard include/config/dmar.h) \
  include/linux/pm_wakeup.h \
    $(wildcard include/config/pm.h) \
  include/linux/pagemap.h \
  include/linux/mm.h \
    $(wildcard include/config/ksm.h) \
    $(wildcard include/config/swap.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hugetlbfs.h) \
  include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  include/linux/bit_spinlock.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/pgtable.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/pgtable_32.h \
    $(wildcard include/config/highpte.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/pgtable_32_types.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/mm_track.h \
    $(wildcard include/config/track/dirty/pages.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/pgtable-3level.h \
  include/asm-generic/pgtable.h \
  include/linux/page-flags.h \
    $(wildcard include/config/pageflags/extended.h) \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/s390.h) \
  include/linux/huge_mm.h \
  include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
  include/linux/highmem.h \
  include/linux/uaccess.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/uaccess.h \
    $(wildcard include/config/x86/wp/works/ok.h) \
    $(wildcard include/config/x86/intel/usercopy.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/uaccess_32.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/cacheflush.h \
    $(wildcard include/config/x86/pat.h) \
    $(wildcard include/config/debug/rodata.h) \
    $(wildcard include/config/debug/rodata/test.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/highmem.h \
  include/linux/interrupt.h \
    $(wildcard include/config/generic/irq/probe.h) \
    $(wildcard include/config/debug/shirq.h) \
  include/linux/irqreturn.h \
  include/linux/irqnr.h \
  include/linux/hardirq.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
  include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/hardirq.h \
    $(wildcard include/config/x86/mce.h) \
    $(wildcard include/config/x86/mce/threshold.h) \
  include/linux/irq.h \
    $(wildcard include/config/irq/per/cpu.h) \
    $(wildcard include/config/irq/release/method.h) \
    $(wildcard include/config/intr/remap.h) \
    $(wildcard include/config/generic/pending/irq.h) \
    $(wildcard include/config/numa/irq/desc.h) \
    $(wildcard include/config/generic/hardirqs/no//do/irq.h) \
    $(wildcard include/config/cpumasks/offstack.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/irq.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/irq_regs.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/hw_irq.h \
  include/linux/profile.h \
    $(wildcard include/config/profiling.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/sections.h \
  include/asm-generic/sections.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/tlbflush.h \
  include/linux/hugetlb_inline.h \
  include/linux/backing-dev.h \
    $(wildcard include/config/debug/fs.h) \
  include/linux/writeback.h \
  include/linux/mempool.h \
  include/linux/bio.h \
  include/linux/ioprio.h \
  include/linux/iocontext.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/io.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/io_32.h \
  include/asm-generic/iomap.h \
  include/linux/vmalloc.h \
  include/linux/bsg.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/scatterlist.h \
  include/asm-generic/scatterlist.h \
  include/linux/elevator.h \
  include/linux/proc_fs.h \
    $(wildcard include/config/proc/devicetree.h) \
    $(wildcard include/config/proc/kcore.h) \
  include/linux/magic.h \
  include/linux/seq_file.h \
  include/scsi/scsi_cmnd.h \
  include/linux/dma-mapping.h \
    $(wildcard include/config/has/dma.h) \
    $(wildcard include/config/have/dma/attrs.h) \
    $(wildcard include/config/need/dma/map/state.h) \
  include/linux/dma-attrs.h \
  include/linux/bug.h \
  include/linux/scatterlist.h \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/dma-mapping.h \
    $(wildcard include/config/isa.h) \
  include/linux/kmemcheck.h \
  include/linux/dma-debug.h \
    $(wildcard include/config/dma/api/debug.h) \
  /usr/src/kernels/2.6.32-358.el6.i686/arch/x86/include/asm/swiotlb.h \
    $(wildcard include/config/swiotlb.h) \
  include/linux/swiotlb.h \
  include/asm-generic/dma-coherent.h \
    $(wildcard include/config/have/generic/dma/coherent.h) \
  include/asm-generic/dma-mapping-common.h \
  include/scsi/scsi_device.h \
  include/scsi/scsi.h \
  include/scsi/scsi_eh.h \
  /mnt/hgfs/scst_cache/scst/src/../include/scst_const.h \
  /mnt/hgfs/scst_cache/scst/src/../include/scst_sgv.h \
  /mnt/hgfs/scst_cache/scst/src/scst_priv.h \
  include/scsi/scsi_driver.h \
  include/scsi/scsi_host.h \
  /mnt/hgfs/scst_cache/scst/src/../include/scst_debug.h \
    $(wildcard include/config/.h) \
  /mnt/hgfs/scst_cache/scst/src/scst_mem.h \
  /mnt/hgfs/scst_cache/scst/src/scst_pres.h \

/mnt/hgfs/scst_cache/scst/src/scst_main.o: $(deps_/mnt/hgfs/scst_cache/scst/src/scst_main.o)

$(deps_/mnt/hgfs/scst_cache/scst/src/scst_main.o):
