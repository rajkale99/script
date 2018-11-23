#!/bin/bash

echo -e "$red Bash Script For Cloning Trees Stuff"

#color
purple='\033[1;35m'
cyan='\033[0;36m'
red='\033[0;31m'
nc='\033[0m'

echo -e "$purple Maintained By Rajkale99"

echo -e "$cyan Cloning Trees"
git clone -b xp https://github.com/rajkale99/device_xiaomi_vince device/xiaomi/vince
git clone -b xp https://github.com/rajkale99/android_device_xiaomi_msm8953-common device/xiaomi/msm8953-common
git clone -b xp https://github.com/rajkale99/proprietary_vendor_xiaomi vendor/xiaomi
git clone -b android-9.0-inline https://github.com/rajkale99/kernel_xiaomi_msm8953 kernel/xiaomi/msm8953
