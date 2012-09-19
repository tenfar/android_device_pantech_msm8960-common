#!/system/bin/sh
# Copyright (c) 2010-2012, Code Aurora Forum. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above
#       copyright notice, this list of conditions and the following
#       disclaimer in the documentation and/or other materials provided
#       with the distribution.
#     * Neither the name of Code Aurora Forum, Inc. nor the names of its
#       contributors may be used to endorse or promote products derived
#      from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
# ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# This script will load and unload the wifi driver to put the wifi in
# in deep sleep mode so that there won't be voltage leakage.
# Loading/Unloading the driver only incase if the Wifi GUI is not going
# to Turn ON the Wifi. In the Script if the wlan driver status is
# ok(GUI loaded the driver) or loading(GUI is loading the driver) then
# the script won't do anything. Otherwise (GUI is not going to Turn On
# the Wifi) the script will load/unload the driver
# This script will get called after post bootup.
        # FEATURE_SKY_TISTRP_CONIFG , p11019 ymlee, 2012-03-07 +++, 20110405 thkim_wifi change the location from persist to data because of PDL
        # check if the file is a link .. if it is link copy the file. Anristu TisTrp test, p11019 ymlee, 2012-03-07
	#ifdef  FEATURE_PANTECH_WLAN_TRP_TIS // 2012-04-09, Pantech only, ymlee_p11019, to config & test TRP TIS
        #cp /system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini /data/misc/wifi/WCNSS_qcom_cfg.ini
        #if [ -f /data/misc/wifi/WCNSS_DONE_TRPTRS.ini ] ; then
	#rm /data/misc/wifi/WCNSS_qcom_cfg.ini
        #   rm /data/misc/wifi/WCNSS_DONE_TRPTRS.ini
        #   sync
        #fi              
        #	rm /system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini
        #	cp /system/etc/firmware/wlan/prima/WCNSS_DONE_TRPTRS.ini /system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini
        chown system.system /system/etc/firmware/wlan/prima/WCNSS_qcom_cfg_trptis.ini
        cp /system/etc/firmware/wlan/prima/WCNSS_qcom_cfg_trptis.ini /data/misc/wifi/WCNSS_qcom_cfg.ini
        sync

	# Pantech - 20120423 , enable SSR
	echo 3 > /sys/module/subsystem_restart/parameters/restart_level 
	echo 1 > /sys/module/wcnss_ssr_8960/parameters/enable_riva_ssr
	
	# FEATURE_PANTECH_WLAN_TRP_TIS ---
        # The property below is used in Qcom SDK for softap to determine
        # the wifi driver config file
        setprop wlan.driver.config /data/misc/wifi/WCNSS_qcom_cfg.ini
        # We need to make sure the WCNSS platform driver is running.
        # The WCNSS platform driver can either be built as a loadable
        # module or it can be built-in to the kernel.  If it is built
        # as a loadable module it can have one of several names.  So
        # look to see if an appropriately named kernel module is
        # present
        echo 1 > $wcnssnode
        # Plumb down the device serial number
        serialno=`getprop ro.serialno`
        echo $serialno > /sys/devices/platform/wcnss_wlan.0/serial_number

exit 0
