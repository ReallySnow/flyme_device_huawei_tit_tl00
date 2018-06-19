#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 12722176 6d8fdb2ced150eb4ff7e4eb8b16ebe2ebb5ac4c9 8308736 a39a142f1448741dd662eef439c310a72c88e646
fi
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:12722176:6d8fdb2ced150eb4ff7e4eb8b16ebe2ebb5ac4c9; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:8308736:a39a142f1448741dd662eef439c310a72c88e646 EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery 6d8fdb2ced150eb4ff7e4eb8b16ebe2ebb5ac4c9 12722176 a39a142f1448741dd662eef439c310a72c88e646:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
