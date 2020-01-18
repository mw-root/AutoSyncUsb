# AutoSyncUsb
Simple setup to sync a USB drive on insertion using a udev rule.

The udev rules ensure that only a specific usb is targeted, however it is only filtering on vendor and product id. You could add a serial number filter if you have multiple drives of the same type.
