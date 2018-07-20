#!/bin/bash
echo Welcome To Automated Build Env And device source download script for vince

echo By rajkale99


echo -e RRRRRRRRRR          AAA		JJJJJJJJJJJJ
echo -e RRR    RRR         AAAAA	     JJJ
echo -e RRR   RRR	  AAA AAA	     JJJ
echo -e RRR  RRR	 AAA---AAA	     JJJ
echo -e RRR    RRR	AAA     AAA	     JJJ
echo -e RRR     RRR    AAA	 AAA    JJJ  JJJ
echo -e RRR      RRR  AAA	  AAA   JJJJJJJ


echo Establishing A Build Environment
sudo apt-get install git-core
sudo apt-get update
sudo apt-get install openjdk-8-jdk
sudo apt-get install openjdk-8-jre
echo Install Build Tools
sudo apt-get install git-core python gnupg flex bison gperf build-essential zip curl gcc-multilib g++-multilib libc6-dev-i386  ccache libgl1-mesa-dev lib32ncurses5-dev \ unzip libesd0-dev squashfs-tools

echo Configure Repo And git

curl https://storage.googleapis.com/git-repo-downloads/repo > repo
chmod a+x repo
sudo install repo /usr/local/bin
rm repo
sudo apt-get upgrade -y
echo Syncing Vince source
git clone https://github.com/rajkale99/Android-device-xiaomi-vince -b android-8.1 device/xiaomi/vince
git clone https://github.com/MiracleDROID/vendor_xiaomi_vince -b android-8.1 vendor/xiaomi
git clone https://github.com/Blacksuan19/android_kernel_dark_ages -b darky kernel/xiaomi/vince


