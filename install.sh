#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
    echo "Please run this script as root or use sudo."
    exit 1
fi

cp ct /usr/share/X11/xkb/symbols/
patch <add-ct.diff /usr/share/X11/xkb/rules/evdev.xml
