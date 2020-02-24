#!/bin/bash

sed -i "62c Enable=1" /opt/MMDVM_Bridge/MMDVM_Bridge.ini
sudo systemctl restart ircddbgateway
sudo systemctl restart mmdvm_bridge

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)

sed -i "6c Exec=sh -c 'cd /home/pi/V104/;lxterminal --geometry=80x20 -e sudo sh ejecutar_solodstar.sh'" /home/pi/DesktopAbrir_solodstar.desktop
sed -i "7c Icon=/home/pi/$SCRIPTS_version/ICONO_DVSWITCH_OFF" /home/pi/DesktopAbrir_solodstar.desktop
sed -i "11c Name[es_ES]=AbrirXX solo D-STAR" /home/pi/DesktopAbrir_solodstar.desktop
sed -i "13c SOLODSTAR=OFF" /home/pi/status.ini


sudo killall MMDVMDSTAR
sudo killall ircddbgateway
sudo killall MMDVMBM


