# 99resetsoundcard.sh
## Reset USB sound card after system wake up from sleep

Solution from here: http://askubuntu.com/a/61165/304425


Put `99resetsoundcard.sh` into `/lib/systemd/system-sleep/` to run automatically after wake up from sleep

Use `dmesg` command to know your device number (in my case `.../devices/4-1`) after disconnecting and connecting your usb soundcard phisically.

Or use lsusb to get vendor and product IDs and then run a quick command like this on terminal to list how the paths relate to different vendor/product ID pairs:

```
for X in /sys/bus/usb/devices/*; do 
    echo "$X"
    cat "$X/idVendor" 2>/dev/null 
    cat "$X/idProduct" 2>/dev/null
    echo
done
```

Tested on Ubuntu 16.04 and 16.10 with a Lexicon Lambda sound card.