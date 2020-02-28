#!/bin/bash


echo "******************************************"
echo "*        ESTO DESACTIVARÁ D-STAR         *"
echo "*              EN DVSWITCH               *"
echo "******************************************"
sleep 3

clear
echo "***********************************************"
echo "*             ABRIENDO D-STAR                 *"
echo "***********************************************"
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_ircDDBGateway.desktop /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh cerrar_d-star.sh'" /home/pi/Abrir_ircDDBGateway.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICONO_IRCDDB_ON.png" /home/pi/Abrir_ircDDBGateway.desktop
sed -i "10c Name[es_ES]=Cerrar ircDDB" /home/pi/Abrir_ircDDBGateway.desktop
sed -i "1c D-STAR=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_ircDDBGateway.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_ircDDBGateway.desktop


sed -i "62c Enable=0" /opt/MMDVM_Bridge/MMDVM_Bridge.ini
sudo systemctl stop ircddbgateway
sudo systemctl restart mmdvm_bridge.service

sudo ircddbgateway -gui

cd /home/pi/Desktop
sudo cp Abrir_ircDDBGateway.desktop /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh ejecutar_d-star.sh'" /home/pi/Abrir_ircDDBGateway.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICONO_IRCDDB_OFF.png" /home/pi/Abrir_ircDDBGateway.desktop
sed -i "10c Name[es_ES]=Abrir ircDDB" /home/pi/Abrir_ircDDBGateway.desktop
sed -i "1c D-STAR=OFF" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_ircDDBGateway.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_ircDDBGateway.desktop




