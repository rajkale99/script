#!/bin/bash
echo -e "$red Bash Script For Clining Tress Stuff"
#color
purple='\033[1;35m'
cyan='\033[0;36m'
red='\033[0;31m'
nc='\033[0m'

echo -e "$purple Maintained By Rajkale99"

echo -e "$red Remove wlan-caf"
rm -rf hardware/qcom/wlan
rm -rf hardware/qcom/wlan-caf

echo -e "$cyan Cloning Trees"
git clone https://android.googlesource.com/platform/hardware/qcom/wlan hardware/qcom/wlan
git clone -b xtended https://github.com/rajkale99/device_xiaomi_vince device/xiaomi/vince
git clone -b xtended https://github.com/rajkale99/android_device_xiaomi_msm8953-common device/xiaomi/msm8953-common
git clone -b xtended https://github.com/rajkale99/proprietary_vendor_xiaomi vendor/xiaomi
git clone -b android-9.0-inline https://github.com/rama982/kernel_xiaomi_msm8953 kernel/xiaomi/msm8953
