#!/bin/bash
echo -e "$cyan Welcome To Automated Build Env And device source download script for vince"

echo -e "$cyan By rajkale99"



#Colors
black='\033[0;30m'
red='\033[0;31m'
green='\033[0;32m'
brown='\033[0;33m'
blue='\033[0;34m'
purple='\033[1;35m'
cyan='\033[0;36m'
nc='\033[0m'
echo -e "$cyan---------------- ----";
echo -e "------------------------\n";
echo -e "██████╗--█████╗-- ███████╗";
echo -e "██╔══██╗██╔══██╗     ██  ╝";
echo -e "██████╔╝███████║     ██ ║";
echo -e "██╔══██╗██╔══██║     ██ ║";
echo -e "██║--██║██║--██║ ██████ ║";
echo -e "╚═╝--╚═╝╚═╝--╚═╝ ╚══════╝\n";
echo -e "-------------------------";
echo -e "-------------------------";
echo -e "\n$green Establishing A Build Environment"
sudo apt-get install git-core
sudo apt-get update
sudo apt-get install openjdk-8-jdk
sudo apt-get install openjdk-8-jre
echo -e "$red Install Build Tools"
sudo apt-get install git-core python gnupg flex bison gperf build-essential zip curl gcc-multilib g++-multilib libc6-dev-i386  ccache libgl1-mesa-dev lib32ncurses5-dev \ unzip libesd0-dev squashfs-tools

echo -e "$blue Configure Repo And git"

curl https://storage.googleapis.com/git-repo-downloads/repo > repo
chmod a+x repo
sudo install repo /usr/local/bin
rm repo
sudo apt-get upgrade -y
echo -e "$purple Syncing Vince source"
git clone https://github.com/rajkale99/Android-device-xiaomi-vince -b android-8.1 device/xiaomi/vince
git clone https://github.com/MiracleDROID/vendor_xiaomi_vince -b android-8.1 vendor/xiaomi
git clone https://github.com/Blacksuan19/android_kernel_dark_ages -b darky kernel/xiaomi/vince
