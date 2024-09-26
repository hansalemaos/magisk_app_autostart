#!/system/bin/sh
MODDIR=${0%/*}
my_package="com.termux" # use this line - only package name necessary
my_activity="com.termux/.app.TermuxActivity" # or this one - MainActivity is necessary.
# if you use both, the app will start twice (my preferred way, just to make sure)
while [ "$(getprop sys.boot_completed)" != 1 ]; do
    sleep 1
done

while [[ ! -d "/sdcard" ]] || [[ ! -e "/system/bin/am" ]] || [[ ! -e "/system/bin/cmd" ]]; do
    sleep 3
done
PATH=$PATH:/system/bin
if [[ -n "$my_package" ]]; then
    /system/bin/am  start "$(/system/bin/cmd package resolve-activity --brief "$my_package" | tail -n 1)"
fi
sleep 3
if [[ -n "$my_activity" ]]; then
    /system/bin/am start "$my_activity"
fi
