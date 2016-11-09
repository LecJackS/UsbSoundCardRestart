#!/bin/sh
case $1/$2 in
  post/*)
    echo "Waking up from $2..."
    echo "Restarting SoundCard..."
    sh -c "echo 0 > /sys/bus/usb/devices/4-1/authorized"
    sh -c "echo 1 > /sys/bus/usb/devices/4-1/authorized"
    echo "Done"
    # Place your post suspend (resume) commands here, or `exit 0` if no post suspend action required
    ;;
esac
