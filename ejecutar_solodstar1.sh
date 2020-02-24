#!/bin/bash
sudo systemctl stop ircddbgateway.service

cd /home/pi/MMDVMHost
echo "\33[1;32m"
clear
echo "***********************************************"
echo "*             ABRIENDO SOLO D-STAR            * "
echo "***********************************************"
sleep 1
sudo ircddbgateway -gui & sudo ./MMDVMDSTAR MMDVMDSTAR.ini
