# usb_inserted.sh
This script is run by the udev rules. Mine is VERY basic, yours could be anything.

# pb_notify.py
I use pushbullet to send notifications to my phone. The python script is dead simple and operates by sending a simple message passed as an arg.

```
python pb_notify --msg 'My Message'
```

This is used by the usb_inserted.sh script to send status updates.

Create a virtualenv for this script, you'll only need a couple packages that all are required by pushbullet.py

``` 
virtualenv venv
. ./venv/bin/activate
pip install -r requirements.txt
```
