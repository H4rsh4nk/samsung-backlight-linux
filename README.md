# samsung-backlight-linux
Fn bind for backlight control for any laptop for linux systems.

## Step 1
Copy these files in your pc.
Locate backlight folder for you pc.
Normally it should be **/sys/class/leds/_your_device::backlight/brightness_**

<img src="https://github.com/H4rsh4nk/samsung-backlight-linux/blob/main/Driver-folder.png" width="800"> 

## Step 2
Edit the path in both files i.e. **/sys/class/leds/samsung::kbd_backlight/brightness** 
with your devices specificpath you found in **Step 1**

<img src="https://github.com/H4rsh4nk/samsung-backlight-linux/blob/main/Script_file.png" width="800"> 

And replace **"toor"** with your user password 

## Step 3
Bind 2 keyboard shorcuts :
### 1 "sh /path_where_your_placed_file/inc_baclit.sh"   //increasing backlight brightness
### 2 "sh /path_where_your_placed_file/dec_baclit.sh"   //decreasing backlight brightness

## Step 4 
Enjoy

# (˘︶˘).｡*♡

Will try to make it more automated once i get more time.
