#!/system/bin/sh
#this script unload normal wlan module and load FTM module

echo try insmod
insmod /system/lib/modules/wlan.ko con_mode=5
while [ $? -ne 0 ]; do
	echo insmod failed
	setprop ctl.stop wpa_supplicant
	echo rmmod wlan
	rmmod wlan
	sleep 1.5
	echo insmod again
	insmod /system/lib/modules/wlan.ko con_mode=5
done
