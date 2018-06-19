Flyme基于nougat分支插桩（LineageOS14.1）
===========================
同步源码
===========================
     
    mkdir flyme
    cd flyme
    repo init -u https://github.com/FlymeOS/manifest.git -b nougat7.1
    repo sync -c -j4
     
打包
===========================
克隆此项目然后cd到项目目录然后运行

    . build/envsetup.sh
    flyme fullota
     
已知BUG
===========================
 * 部分应用闪退
 * 有时会软重启
 * 主题商店和应用商店无法联网
