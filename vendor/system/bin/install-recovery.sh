#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 12785664 3152ed78d875ec80f486593cb0de5180933c133f 8370176 d18fb0d004a702de1ca92d317d2baf13eb150fbf
fi
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:12785664:3152ed78d875ec80f486593cb0de5180933c133f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:8370176:d18fb0d004a702de1ca92d317d2baf13eb150fbf EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery 3152ed78d875ec80f486593cb0de5180933c133f 12785664 d18fb0d004a702de1ca92d317d2baf13eb150fbf:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
