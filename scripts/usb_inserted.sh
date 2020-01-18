#!/bin/bash

## uuid of your USB partition from running `blkid`
USB_UUID="<XXXX-XXXX>"
USB_MOUNTPOINT="/some/folder"

## PYTHON | pushbullet.py
NOTIFY_VENV="/path/to/venv/"
NOTIFY_SCRIPT="/path/to/pb_notify.py"
NOTIFY="$NOTIFY_VENV/bin/python $NOTIFY_SCRIPT --msg"
##

/bin/mount UUID=$USB_UUID $USB_MOUNTPOINT
$NOTIFY 'USB has been inserted, work is starting'

## sync data
## /my/script/that/does/work.sh

/bin/umount $USB_MOUNTPOINT
/bin/eject $USB_UUID

## if still mounted
if `grep -qa $USB_MOUNTPOINT /proc/mounts`
then
    $NOTIFY "I was unable to unmount the drive"
else
    $NOTIFY 'USB has been ejected'
fi

