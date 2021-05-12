#!/bin/bash

for file in $(cat /sys/class/leds/samsung::kbd_backlight/brightness)
do
echo "$((file-1))" > /sys/class/leds/samsung::kbd_backlight/brightness
done
