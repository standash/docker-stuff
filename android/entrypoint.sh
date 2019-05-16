#!/bin/bash

# start adb server
adb start-server

# create avd
echo 'no' | avdmanager create avd -n emulator1 -f -k 'system-images;android-19;google_apis;x86' -d 'Nexus 5'

# create sdcard
mkdir -p /sdcards
mksdcard -l e 666M /sdcards/emulator1_sdcard.img

# update the hardware config
rm ${ANDROID_SDK_HOME}/.android/avd/emulator1.avd/config.ini
mv /hardware_configs/config.ini ${ANDROID_SDK_HOME}/.android/avd/emulator1.avd/config.ini

# infinite loop
while :;
    do
    :;
done
