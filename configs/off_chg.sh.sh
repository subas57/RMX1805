#!/sbin/sh
#
# Fix offline charge

rm /system/bin/charger
mv /tmp/install/bin/charger /system/bin/charger
chmod +x /system/bin/charger