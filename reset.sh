destruct() {
    SCRIPT_PATH="$(realpath "$0")"
    rm -f "$SCRIPT_PATH"
    exit 1
}
trap destruct INT TERM EXIT

mount -o rw,remount /
mount -o rw,remount /dev/block/platform/soc/11270000.ufshci/by-name/system
clear
banner

modpeson(){
settings put global airplane_mode_on 1
am broadcast -a android.intent.action.AIRPLANE_MODE
}
delete(){
am force-stop com.fufufu.katrina.backup
am force-stop com.android.location.fused
am force-stop com.paymaya
am force-stop com.lazada.android
am force-stop com.lazada.android
am force-stop com.android.chrome
am force-stop com.kiwibrowser.browser
am force-stop id.dana
am force-stop id.dana
am force-stop com.whatsapp
am force-stop com.whatsapp
am force-stop com.whatsapp.w4b
am force-stop org.bromite.chromium
am force-stop com.microsoft.office.outlook
am force-stop mark.via.gp
am force-stop jp.naver.line.android
am force-stop com.ovpnspider
am force-stop com.japan.vpn.pro
am force-stop
am force-stop
am force-stop
am force-stop
pm clear com.fufufu.katrina.backup
pm clear com.android.location.fused
pm clear com.paymaya
pm clear com.lazada.android
pm clear com.lazada.android
pm clear com.android.chrome
pm clear com.kiwibrowser.browser
pm clear id.dana
pm clear id.dana
pm clear com.whatsapp
pm clear com.whatsapp
pm clear com.whatsapp.w4b
pm clear org.bromite.chromium
pm clear com.microsoft.office.outlook
pm clear mark.via.gp
pm clear jp.naver.line.android
pm clear com.ovpnspider
pm clear com.japan.vpn.pro
pm clear
pm clear
pm clear
pm clear
am kill com.fufufu.katrina.backup
am kill com.android.location.fused
am kill com.paymaya
am kill com.lazada.android
am kill com.lazada.android
am kill com.android.chrome
am kill com.kiwibrowser.browser
am kill id.dana
am kill id.dana
am kill com.whatsapp
am kill com.whatsapp
am kill com.whatsapp.w4b
am kill org.bromite.chromium
am kill com.microsoft.office.outlook
am kill mark.via.gp
am kill jp.naver.line.android
am kill com.ovpnspider
am kill com.japan.vpn.pro
am kill
am kill
am kill
am kill
am kill
}

wipedata() {
mount -o rw,remount /
am force-stop com.android.location.fused
pm clear com.android.location.fused
am force-stop com.paymaya
pm clear com.paymaya
am force-stop com.lazada.android
pm clear com.lazada.android
am force-stop com.tokopedia.tkpd
pm clear com.tokopedia.tkpd
am force-stop com.whatsapp
pm clear com.whatsapp
am force-stop com.whatsapp.w4b
pm clear com.whatsapp.w4b
am force-stop id.dana
pm clear id.dana
pm clear com.android.location.fused
am force-stop com.android.webview
pm clear com.android.webview
pm clear com.android.webview
pm clear com.android.htmlviewer
pm clear com.android.location.fused
pm clear com.android.localtransport
pm clear com.android.packageinstaller
am force-stop jp.naver.line.android
pm clear jp.naver.line.android
am force-stop com.microsoft.office.outlook
pm clear com.microsoft.office.outlook
am force-stop com.facebook.katana
pm clear com.facebook.katana
am force-stop
pm clear
am force-stop
pm clear
am force-stop
pm clear
am force-stop
pm clear
am force-stop
pm clear
am force-stop
pm clear

#browser
am force-stop com.google.android.fufufu.deviceid
pm clear com.google.android.fufufu.deviceid
am force-stop com.chrome.beta
pm clear com.chrome.beta
am force-stop org.gologin.orbita
pm clear org.gologin.orbita
am force-stop com.android.chrome
pm clear com.android.chrome
am force-stop com.brave.browser
pm clear com.brave.browser
am force-stop mark.via.gp
pm clear mark.via.gp
am force-stop org.mozilla.firefox
pm clear org.mozilla.firefox
am force-stop com.kiwibrowser.browser
pm clear com.kiwibrowser.browser
am force-stop com.vivaldi.browser
pm clear com.vivaldi.browser
am force-stop com.evo.browser
pm clear com.evo.browser
am force-stop org.bromite.bromite
pm clear org.bromite.bromite
am force-stop com.microsoft.emmx.beta
pm clear com.microsoft.emmx.beta
am force-stop com.bharat.browser
pm clear com.bharat.browser
am force-stop com.sec.android.app.sbrowser
pm clear com.sec.android.app.sbrowser
am force-stop net.upx.proxy.browser
pm clear net.upx.proxy.browser
am force-stop com.sec.android.app.sbrowser
pm clear com.sec.android.app.sbrowser
am force-stop com.microsoft.emmx.canary
pm clear com.microsoft.emmx.canary
am force-stop com.browser.tssomas
pm clear com.browser.tssomas
am force-stop org.bromite.chromium
pm clear org.bromite.chromium
am force-stop com.pawxy.browser
pm clear com.pawxy.browser
am force-stop
pm clear
am force-stop
pm clear
am force-stop
pm clear
am force-stop
pm clear
am force-stop
pm clear

# TikCapCut
am force-stop com.ss.android.ugc.trill
pm clear com.ss.android.ugc.trill
am force-stop com.lemon.lvoverseas
pm clear com.lemon.lvoverseas

rm -rf /data/system/users/0/fpdata
rm -rf /data/system/users/0/registered_services
rm -rf /data/dalvik-cache/
rm -rf /data/cache/
rm -rf "/data/user_de/0/com.android.location.fused/*"
rm -rf "/data/data/com.android.location.fused/*"

rm -rf "/sdcard/data/*"
rm -rf "/data/dalvik-cache/*"
rm -rf "/cache/**"

rm -rf /storage/emulated/0/WhatsApp
rm -rf /storage/emulated/0/Android
rm -rf /storage/emulated/0/Pictures
rm -rf /storage/emulated/0/Tokopedia
rm -rf /storage/emulated/0/Music
rm -rf /storage/emulated/0/Musik
rm -rf /storage/emulated/0/Movies/
rm -rf /storage/emulated/0/Movies/*.*
rm -rf /storage/emulated/0/Tencent
rm -rf /storage/emulated/0/.UTSystemConfig
rm -rf /storage/emulated/0/.Uc2UTSystemConfig
rm -rf /storage/emulated/0/.Uc2DataStorage
rm -rf /storage/emulated/0/.gs_fs0
rm -rf /storage/emulated/0/.gs_file
rm -rf /storage/emulated/0/.face
rm -rf /storage/emulated/0/.DataStorage
rm -rf /storage/emulated/0/.config
rm -rf /storage/emulated/0/.com.taobao.dp
rm -rf /storage/emulated/0/shopeeID
rm -rf /storage/emulated/0/cache
rm -rf /storage/emulated/0/.cri
rm -rf /storage/emulated/0/*.*
rm -rf /storage/emulated/0/NikGapps
rm -rf /storage/emulated/0/LOST.DIR/*
rm -rf /storage/emulated/0/cache/*.*
rm -rf /cache/*.apk
rm -rf /cache/*.tmp
rm -rf /data/backup/pending/*.tmp
rm -rf /data/cache/*.*
rm -rf /data/clipboard/*
rm -rf /data/dalvik-cache/*.apk
rm -rf /data/dalvik-cache/*.tmp
rm -rf /data/dontpanic/*.tmp
rm -rf /data/kernelpanics/*.tmp
rm -rf /data/last_alog
rm -rf /data/last_kmsg
rm -rf /data/log/*
rm -rf /data/mlog/*
rm -rf /data/system/dropbox/*
rm -rf /data/system/usagestats/*
rm -rf /data/tombstones/*
rm -rf /data/*.log
rm -rf /data/log/*
find /storage/emulated/0/ -type d -empty -print -delete

mount -o ro,remount /
}

wipegms() {
            echo ""
            sleep 0.5
        if [ ! -d /data/data/com.google.android.gms ]; then
            echo -e "${G}-----<>${G}" "${RGB}GAPPS TIDAK TERINSTALL${RGB}"
            else
            su -c am force-stop com.android.location.fused
            su -c am force-stop com.google.android.gm
            su -c am force-stop com.google.android.apps.photosgo
            su -c am force-stop com.google.android.apps.wellbeing
            su -c am force-stop com.google.android.carriersetup
            su -c am force-stop com.google.android.configupdater
            su -c am force-stop com.google.android.ext.services
            su -c am force-stop com.google.android.ext.shared
            su -c am force-stop com.google.android.gms
            su -c am force-stop com.google.android.gms.setup
            su -c am force-stop com.google.android.gsf

            su -c am force-stop com.google.android.markup
            su -c am force-stop com.google.android.projection.gearhead
            su -c am force-stop com.google.android.soundpicker
            su -c am force-stop com.google.android.syncadapters.calendar
            su -c am force-stop com.google.android.syncadapters.contacts
            su -c am force-stop com.android.vending
            su -c am force-stop com.android.wifi.resources
            su -c am force-stop com.android.wifi.resources.xiaomi_vince

            su -c pm clear com.google.android.gm
            su -c pm clear com.google.android.apps.photosgo
            su -c pm clear com.google.android.apps.wellbeing
            su -c pm clear com.google.android.carriersetup
            su -c pm clear com.google.android.configupdater
            su -c pm clear com.google.android.ext.services
            su -c pm clear com.google.android.ext.shared
            su -c pm clear com.google.android.gms
            su -c pm clear com.google.android.gms.setup
            su -c pm clear com.google.android.gsf

            su -c pm clear com.google.android.markup
            su -c pm clear com.google.android.projection.gearhead
            su -c pm clear com.google.android.soundpicker
            su -c pm clear com.google.android.syncadapters.calendar
            su -c pm clear com.google.android.syncadapters.contacts
            su -c pm clear com.android.vending
            su -c pm clear com.android.wifi.resources
            su -c pm clear com.android.wifi.resources.xiaomi_vince
        fi
            echo -e "${Y}© ${Y}"
            echo -e "${G} \ ${G}"
                echo -e "${G}  \ ___________/__${G}""${RGB}WIPE GMS/SF SELESAI ${RGB}"
                mount -o ro,remount /
                sleep 0.2
                }

modpeson &>/dev/null
echo -ne "${R} ✓ ${N}" "${N}▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(25%)\r'
delete &>/dev/null
echo -ne "${R} ✓ ${N}" "${N}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(50%)\r'
wipedata &>/dev/null
echo -ne "${R} ✓ ${N}" "${N}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(75%)\r'
wipegms &>/dev/null
echo -ne "${R} ✓ ${N}" "${N}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(100%)\n'
sleep 1

echo -e "${G}             ======TIMEPICK SELESAI======             ${N}"
echo -e "${G}             ========S U C C E S S=======             ${N}"
sleep 1

#!/system/bin/sh

G='\e[01;32m'    # GREEN
R='\e[01;31m'    # RED
Y='\e[01;33m'    # YELLOW
B='\e[01;34m'    # BLUE
V='\e[01;35m'    # VIOLET
Bl='\e[01;30m'   # BLACK
C='\e[01;36m'    # CYAN
W='\e[01;37m'    # WHITE
N='\e[00;37;40m' # NEUTRAL

delprop() {
rm r /data/adb/modules/Siluman/system.prop
}

systemprop() {
mount -o rw,remount /
mount -o rw,remount /dev/block/platform/soc/c0c4000.sdhci/by-name/vendor
mkdir /data/local/tmp
dirs=/data/local/tmp/system.prop
dirmat=/data/adb/modules/MagiskHidePropsConf/system.prop
MOD1=("M2010J19CG" "M2007J20CG" "M2102J20SG")
MOD=${MOD1[$RANDOM % ${#MOD1[@]} ]}
hs="cndgdlbpdu0c-140-$(head -3 /dev/urandom | tr -cd '0-9' | cut -c -2)"
clear
banner
sleep 0.3
echo "" >> $dirs
rm -f /data/local/tmp/system.prop
#membuat systemprop
banner
echo -e "${V}Membuat SystemProp${Bl}"
echo ""
sleep 0.3
clear
echo "# This file will be read by resetprop" >> $dirs
echo "# SilumanProp" >> $dirs
echo "# Default safe properties" >> $dirs
echo "# Licence: MIT" >> $dirs
echo "ro.build.display.id=OnePlus7ProOxygen_21_2204061153" >> $dirs
echo "ro.product.model=$MOD" >> $dirs
echo "ro.product.system.model=$MOD" >> $dirs
echo "ro.vendor.product.model=$MOD" >> $dirs
echo "ro.product.vendor.model=$MOD" >> $dirs
echo "ro.product.product.model=$MOD" >> $dirs
echo "ro.product.product.model=$MOD" >> $dirs
echo "ro.product.odm.model=$MOD" >> $dirs
echo "ro.product.system_ext.model=$MOD" >> $dirs
echo "ro.boot.verifiedbootstate=green" >> $dirs
echo "ro.boot.veritymode=enforcing" >> $dirs
echo "vendor.boot.vbmeta.device_state=locked" >> $dirs
echo "ro.build.host=$hs" >> $dirs
echo "ro.debuggable=0" >> $dirs
echo "ro.secure=1" >> $dirs
sleep 1
cp -r -f /data/local/tmp/system.prop $dirmat
echo -e "${C}√ Berhasil √${N}"
clear
N0=$(head -3 /dev/urandom | tr -cd '4-9' | cut -c -1)
N1=("Redmi Note $N0")
FURANDOM=$(head -3 /dev/urandom | tr -cd 'A-Z' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'aeiou' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'bcdfghjklmnpqrstvwxyz' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'aeiou' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'bcdfghjklmnpqrstvwxyz' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'aeiou' | cut -c -1)
FUBTNAME=$(grep -n bluetooth_name /data/system/users/0/settings_secure.xml | grep -o 'value=".*"*' | cut -d '"' -f2)
FUBTNAMEFB=$(grep -n bluetooth_name /data/system/users/0/settings_secure.xml.fallback | grep -o 'value=".*"*' | cut -d '"' -f2)
FUDVNAME=$(grep -n device_name /data/system/users/0/settings_global.xml | grep -o 'value=".*"*' | cut -d '"' -f2)
FUDVNAMEFB=$(grep -n device_name /data/system/users/0/settings_global.xml.fallback | grep -o 'value=".*"*' | cut -d '"' -f2)
settings delete secure advertising_id
echo "settings delete secure advertising_id"
settings delete secure android_id
echo "settings delete secure android_id"
sed -i '/Name =/d' /data/misc/bluedroid/bt_config.conf
echo "Name = $FURANDOM $N1" >> /data/misc/bluedroid/bt_config.conf
sed -i "s/$FUBTNAME/$FURANDOM $N1/g" /data/system/users/0/settings_secure.xml
if [ -f /data/system/users/0/settings_secure.xml.fallback ]; then
echo "Edo, fallback not found"
else
sed -i "s/$FUBTNAMEFB/$FURANDOM $N1/g" /data/system/users/0/settings_secure.xml.fallback
fi
echo "Ganti nama bluetooth"
sed -i "s/$FUDVNAME/$N1/g" /data/system/users/0/settings_global.xml
if [ -f /data/system/users/0/settings_global.xml.fallback ]; then
echo "Edo, fallback not found"
else
sed -i "s/$FUDVNAMEFB/$FURANDOM $N1/g" /data/system/users/0/settings_global.xml.fallback
fi
echo "Ganti nama device"
SCRIPTS_FILE=/data/adb/modules/MagiskHidePropsConf/system.prop
if [ ! -f "$SCRIPTS_FILE" ]; then SCRIPTS_FILE=/data/adb/modules/MagiskHidePropsConf/system.prop;
fi
cp "$SCRIPTS_FILE" /data/adb/modules/magisk-drm-disabler/system.prop
SCRIPTS_FILE=/data/adb/modules/xkatrina_snstv_prps/system.prop
if [ ! -f "$SCRIPTS_FILE" ]; then SCRIPTS_FILE=/data/adb/modules/MagiskHidePropsConf/system.prop;
fi
cp "$SCRIPTS_FILE" /data/adb/modules/magisk-drm-disabler/system.prop
mount -o ro,remount /
}

resik²() {
clear
banner
echo -e "${V}Resik²${Bl}"
su -c rm -rf /data/system/graphicsstats
su -c rm -rf /data/system/users/0/settings_ssaid.xml.fallback
su -c rm -rf /data/system/users/0/app_idle_stats.xml
su -c rm -rf /data/system/users/0/*.fallback
su -c rm -rf /data/system/users/0/fpdata
su -c rm -rf /data/system/users/0/registered_services
su -c rm -rf /data/system/users/0/settings_ssaid.xml
su -c rm -rf /data/system/users/0/settings_ssaid.xml.fallback
su -c rm -rf /data/misc/apexdata/com.android.neuralnetworks/*
su -c rm -rf /data/misc/bluetooth/*
su -c rm -rf /data/misc_ce/0/apexdata/com.android.neuralnetworks/*
su -c rm -rf /data/misc_de/0/apexdata/com.android.neuralnetworks/*
su -c rm -rf /data/user_de/0/com.lazada.android/*
su -c rm -rf /data/user_de/0/com.android.location.fused/*
su -c am force-stop com.google.android.feedback
su -c am force-stop com.google.android.overlay.gmsconfig.common
su -c am force-stop com.google.android.overlay.gmsconfig.gsa
su -c am force-stop com.google.android.apps.wellbeing
su -c am force-stop com.google.android.gms
su -c am force-stop com.google.android.gsf
su -c am force-stop com.android.vending
su -c pm clear com.google.android.ext.services
su -c pm clear com.google.android.ext.shared
su -c pm clear com.google.android.feedback
su -c pm clear com.google.android.overlay.gmsconfig.common
su -c pm clear com.google.android.overlay.gmsconfig.gsa
su -c pm clear com.android.vending
su -c pm clear com.google.android.gms
su -c pm clear com.google.android.gsf
su -c pm clear com.google.android.apps.restore
su -c pm clear com.google.android.carriersetup
su -c pm clear com.google.android.configupdater
su -c pm clear com.google.android.apps.pixelmigrate
su -c pm clear com.google.android.apps.photosgo
su -c pm clear com.google.android.packageinstaller
su -c pm clear com.google.android.apps.wellbeing
su -c pm clear com.google.android.markup
su -c pm clear com.google.android.setupwizard
su -c pm clear com.google.android.syncadapters.calendar
su -c pm clear com.google.android.syncadapters.contacts
su -c pm clear com.google.android.soundpicker
rm -rf /data/user_de/0/com.android.location.fused/*
rm -rf /data/data/com.android.location.fused/*
rm -rf /data/data/com.android.location.fused/*
rm -rf /data/data/com.google.android.gms/*
rm -rf /data/data/com.google.android.gsf/*
rm -rf /data/data/android.auto_generated_rro_vendor__/*
rm -rf /data/data/android.ext.services/*
rm -rf /data/data/android.ext.shared/*
rm -rf /data/data/com.android.backupconfirm/*
rm -rf /data/data/com.android.bips/*
rm -rf /data/data/com.android.bluetooth/*
rm -rf /data/data/com.android.bluetoothmidiservice/*
rm -rf /data/data/com.android.bookmarkprovider/*
rm -rf /data/data/com.android.calendar/*
rm -rf /data/data/com.android.carrierconfig/*
rm -rf /data/data/com.android.carrierconfig.auto_generated_rro_vendor__/*
rm -rf /data/data/com.android.htmlviewer/*
rm -rf /data/data/com.android.webview/*
rm -rf /data/local/*
rm -rf /storage/emulated/0/.*
rm -rf /storage/emulated/0/.mixplorer/
rm -r /storage/emulated/0/NikGapps
rm -rf /storage/emulated/0/Android/*
rm -rf /storage/emulated/0/Android/
rm -rf /storage/emulated/0/Android/data/*
rm -rf /storage/emulated/0/data/*
rm -rf /storage/emulated/0/data/
rm -rf /storage/emulated/0/MT2/
rm -rf /storage/emulated/0/Pictures/*
rm -rf /storage/emulated/0/Pictures/
rm -rf /storage/emulated/0/.cri
rm -rf /storage/emulated/0/LOST.DIR/*
rm -rf /storage/emulated/0/cache/*.*
rm -rf /cache/*.apk
rm -rf /cache/*.tmp
rm -rf /data/backup/pending/*.tmp
rm -rf /data/cache/*.*
rm -rf /data/clipboard/*
rm -rf /data/dalvik-cache/*.apk
rm -rf /data/dalvik-cache/*.tmp
rm -rf /data/dontpanic/*.tmp
rm -rf /data/kernelpanics/*.tmp
rm -rf /data/last_alog
rm -rf /data/last_kmsg
rm -rf /data/local/tmp/*
rm -rf /data/log/*
rm -rf /data/mlog/*
rm -rf /data/system/dropbox/*
rm -rf /data/system/usagestats/*
rm -rf /data/tombstones/*
rm -rf /data/*.log
rm -rf /data/log/*
echo -e "${Y}OKEE${G}"
}

delprop
systemprop
sleep 0.3
clear
resik²
destruct
