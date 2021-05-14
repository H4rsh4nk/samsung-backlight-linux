#!/bin/bash
echo "toor" | sudo -S chmod ugo+rwx /sys/class/leds/samsung::kbd_backlight/brightness
if [ $? -eq 0 ]; then
   notify-send 'Success' 'Keyboard backlight unlocked ｡◕‿◕｡'
else
   notify-send 'Failed' 'Keyboard backlight still locked.
Please try again. 

ʕ´• ᴥ•̥`ʔ'
fi
