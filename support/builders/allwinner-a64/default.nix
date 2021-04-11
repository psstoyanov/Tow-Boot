{ buildTowBoot, TF-A }:

# For Allwinner A64 and Allwinner A64 compatible based hardware
{ defconfig, ... } @ args:

buildTowBoot ({
  meta.platforms = ["aarch64-linux"];
  BL31 = "${TF-A}/bl31.bin";
  filesToInstall = ["u-boot-sunxi-with-spl.bin"];
} // args)