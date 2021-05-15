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
if [ $brightness -ge 1 ]; then
    for file in $(cat /sys/class/leds/samsung::kbd_backlight/brightness)
    do
    echo "$((file-1))" > /sys/class/leds/samsung::kbd_backlight/brightness
    done
fi