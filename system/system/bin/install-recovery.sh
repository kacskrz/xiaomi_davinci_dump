#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:0e2202a61a22346d675cab3f980f455f997a54f0; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:475e4e3562a54723113c34cf2bfcedd354717f76 EMMC:/dev/block/bootdevice/by-name/recovery 0e2202a61a22346d675cab3f980f455f997a54f0 67108864 475e4e3562a54723113c34cf2bfcedd354717f76:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
