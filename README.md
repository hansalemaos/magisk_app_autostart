# magisk_app_autostart
Magsik module to start an app (apk) when the device ist booting 

```sh
# Edit these 2 lines in service.sh : 
my_package="com.termux" # use this line - only package name necessary 
my_activity="com.termux/.app.TermuxActivity" # or this one - MainActivity is necessary.
if you use both, the app will start twice (my preferred way, just to make sure)
```
