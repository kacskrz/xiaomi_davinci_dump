#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:aa895b2f7b3ad2290b3432472cb984b6e0c91d45; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:d7fd517bc8cad7729e6f880e0eecc9785b73516b EMMC:/dev/block/bootdevice/by-name/recovery aa895b2f7b3ad2290b3432472cb984b6e0c91d45 67108864 d7fd517bc8cad7729e6f880e0eecc9785b73516b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
