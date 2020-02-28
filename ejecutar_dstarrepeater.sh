#!/bin/bash
echo "\033[1;31m" #ROJO
echo "******************************************"
echo "      NO SE PUEDE ABRIR ESTE SISTEMA     *"
echo "       SI ESTA EL DVSWITCH ACTIVADO      *"
echo "******************************************"
sleep 5

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_ircDDB.desktop /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh cerrar_ircDDB.sh'" /home/pi/Abrir_ircDDB.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICONO_IRCDDB_ON.png" /home/pi/Abrir_ircDDB.desktop
sed -i "10c Name[es_ES]=Cerrar ircDDB" /home/pi/Abrir_ircDDB.desktop
sed -i "1c D-STAR=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_ircDDB.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_ircDDB.desktop

cd /home/pi/Desktop
sudo cp Abrir_dstarrepeater.desktop /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh cerrar_dstarrepeater.sh'" /home/pi/Abrir_dstarrepeater.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/REPEATER_ON.png" /home/pi/Abrir_dstarrepeater.desktop
sed -i "10c Name[es_ES]=Cerrar D-STAR Repeater" /home/pi/Abrir_dstarrepeater.desktop
sed -i "9c dstarrepeater=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_dstarrepeater.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_dstarrepeater.desktop

sed -i "62c Enable=0" /opt/MMDVM_Bridge/MMDVM_Bridge.ini
sudo systemctl stop ircddbgateway
sudo systemctl restart mmdvm_bridge.service

#sudo ircddbgateway -gui  & 
#sleep 2
#sudo dstarrepeater

 

