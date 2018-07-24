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
sudo apt-get update && sudo apt-get install bc git-core gnupg flex bison gperf squashfs-tools build-essential zip curl libncurses5-dev openjdk-8-jre openjdk-8-jdk pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32ncurses5-dev gcc-multilib maven tmux screen w3m ncftp
 sudo apt-get install git-core gnupg flex bison gpe rf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip curl flex git liblz4-tool libncurses5-dev libsdl1.2-dev libwxgtk3.0-dev maven pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev g++-multilib gcc-multilib

echo -e "$blue Configure Repo And git"

curl https://storage.googleapis.com/git-repo-downloads/repo > repo
chmod a+x repo
sudo install repo /usr/local/bin
rm repo
sudo apt-get upgrade -y
echo -e "$purple Syncing Vince source"
git clone https://github.com/rajkale99/vendor_xiaomi_vince -b 8.1 vendor/xiaomi
git clone https://github.com/Blacksuan19/android_kernel_dark_ages -b darky kernel/xiaomi/vince
