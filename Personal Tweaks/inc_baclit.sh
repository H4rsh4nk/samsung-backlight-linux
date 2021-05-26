#!/bin/bash
stat=$(stat -c '%a' /sys/class/leds/samsung::kbd_backlight/brightness)
if [ $stat -ne 777 ]; then
   echo "toor" | sudo -S chmod ugo+rwx /sys/class/leds/samsung::kbd_backlight/brightness
   if [ $? -eq 0 ]; then
      notify-send 'Success' 'Keyboard backlight unlocked ｡◕‿◕｡'
   else
      notify-send 'Failed' 'Keyboard backlight still locked.
   Please try again. 

   ʕ´• ᴥ•̥`ʔ'
   fi
fi
brightness=$(cat /sys/class/leds/samsung::kbd_backlight/brightness)
if [ $brightness -ge 2 ]; then
   echo 0 > /sys/class/leds/samsung::kbd_backlight/brightness
   notify-send 'Brightness' 'off'
elif [ $brightness -eq 0 ]; then
   notify-send 'Brightness' 'on'
   
   for file in $(cat /sys/class/leds/samsung::kbd_backlight/brightness)
   do
      echo 2 > /sys/class/leds/samsung::kbd_backlight/brightness
   done
fi

# ---------------------------------------------Old code -----------------------------------------------------------------------------------
# Works with 3 mode : High, Med, Low
# Had issues with parrot so sticked to Med (low doesnt work, high works but with issue like light stops after some time )
# 
# NEVER TRY 3+ BRIGHTNESS : LIGHTS WILL BURN

# brightness=$(cat /sys/class/leds/samsung::kbd_backlight/brightness)
# if [ $brightness -eq 3 ]; then
#    echo 0 > /sys/class/leds/samsung::kbd_backlight/brightness
#    notify-send 'Brightness' 'off'
# else
#    if [ $brightness -eq 0 ]; then
#       notify-send 'Brightness' 'Low'
#    elif [ $brightness -eq 1 ]; then
#       notify-send 'Brightness' 'Medium'
#    else
#       notify-send 'Brightness' 'High'
#    fi
  
#    for file in $(cat /sys/class/leds/samsung::kbd_backlight/brightness)
#    do
#       echo "$((file+1))" > /sys/class/leds/samsung::kbd_backlight/brightness
#    done
# fi
