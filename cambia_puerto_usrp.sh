#!/bin/bash
clear

valor=$(awk "NR==40" /home/pi/.local/datos_dvswitch)

sed -i "21c mode=\`cat \/tmp\/ABInfo_$valor.json \| python -c \'import json,sys;obj=json.load(sys.stdin); print obj\[\"tlv\"\]\[\"ambe_mode\"\];\'\`" /opt/Analog_Bridge/analog_bridge.sh
