# Editing Udev Rules

You'll need the Vendor and Product Id of your USB drive to ensure this only runs when that particular drive is inserted.

lsusb will give you the output you need
```
$ lsusb
Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 001 Device 003: ID 8087:0a2a Intel Corp.
Bus 001 Device 002: ID 0bda:0153 Realtek Semiconductor Corp. 3-in-1 (SD/SDHC/SDXC) Card Reader
Bus 001 Device 005: ID 0781:5583 SanDisk Corp. Ultra Fit
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
```

In the example above, I want to use the SanDisk drive, my Vendor ID is ```0781```, Product ID is ```5583```

For the case above, the udev rule would look like this
```
SUBSYSTEM=="block", ENV{DEVTYPE}=="partition", ACTION=="add", ATTRS{idVendor}=="0781", ATTRS{idProduct}=="5583", RUN+="/path/to/usb_inserted.sh"
```