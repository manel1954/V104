#!/bin/bash
clear

valor=$(awk "NR==3" /opt/Analog_Bridge/analog_bridge.sh)

sed -i "24c mode=\`cat \/tmp\/ABInfo_$valor.json \| python -c \'import json,sys;obj=json.load(sys.stdin); print obj\[\"tlv\"\]\[\"ambe_mode\"\];\'\`" /opt/Analog_Bridge/analog_bridge.sh
