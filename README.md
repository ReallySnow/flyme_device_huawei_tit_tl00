# Flyme基于nougat分支插桩（LineageOS14.1）
## 同步源码
     
    mkdir flyme
    cd flyme
    repo init -u https://github.com/FlymeOS/manifest.git -b nougat7.1
    repo sync -c -j4
     
## 打包
克隆此项目然后cd到项目目录然后运行

    . build/envsetup.sh
    cd devices
    git clone https://github.com/ReallySnow/flyme_device_huawei_tit_tl00.git -b nougat-7.1 titan
    cd titan
    flyme fullota
     
## 已知BUG
* 有时候解锁设置会显示停止运行，但不影响使用
