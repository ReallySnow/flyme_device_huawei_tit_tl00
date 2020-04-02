#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11020288 9db3664c6fae7077d37610029c2e74e99e55affd 7737344 45f06e2895c92390991cecf27fe630dae3ac5e5d
fi

if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery:11020288:9db3664c6fae7077d37610029c2e74e99e55affd; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot:7737344:45f06e2895c92390991cecf27fe630dae3ac5e5d EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery 9db3664c6fae7077d37610029c2e74e99e55affd 11020288 45f06e2895c92390991cecf27fe630dae3ac5e5d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
