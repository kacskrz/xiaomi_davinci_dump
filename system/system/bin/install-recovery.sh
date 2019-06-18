#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:c6d10211629b44b7b1cfd74a670ebdfc4545ed4f; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:5f4e8c803a31f1c443ebd1b9f8f930b3784fe4c1 EMMC:/dev/block/bootdevice/by-name/recovery c6d10211629b44b7b1cfd74a670ebdfc4545ed4f 67108864 5f4e8c803a31f1c443ebd1b9f8f930b3784fe4c1:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
