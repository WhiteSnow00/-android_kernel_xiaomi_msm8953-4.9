# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=Nito Kernel Install
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=1
device.name1=vince
supported.versions=28
'; } # end properties

# shell variables
block=/dev/block/mmcblk0p21;
ramdisk_compression=auto;
is_slot_device=0;
## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;
## AnyKernel install
dump_boot;
write_boot;
## end install