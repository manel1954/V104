#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"

echo "${ROJO}"
echo "                    ******************************************"
echo "*        ESTO DESACTIVARÁ D-STAR         *"
echo "*              EN DVSWITCH               *"
echo "               ******************************************"
sleep 5
clear

#Escribe en el fichero INFO_RXF para poner los datos del icono INFO TXF
mode=`grep -n -m 1 "^Port=" /home/pi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
caracteres=`expr index $mode $buscar`
caracteres_linea=`expr $caracteres - 1`
numero_linea_port=`expr substr $mode 1 $caracteres_linea`
mode=$(awk "NR==$numero_linea_port" /home/pi/MMDVMHost/MMDVMDSTAR.ini)
puerto=`expr substr $mode 14 9`
puerto="  "$puerto
cd /home/pi/Desktop
sudo cp RXF_DSTAR.desktop /home/pi
frecuencia=$(awk "NR==13" /home/pi/MMDVMHost/MMDVMDSTAR.ini)
frecuencia=`expr substr $frecuencia 13 9`
frecuencia=$frecuencia$puerto
sed -i "11c Name=$frecuencia" /home/pi/RXF_DSTAR.desktop
sleep 1
sudo cp /home/pi/RXF_DSTAR.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/RXF_DSTAR.desktop                       
sed -i "5c $frecuencia" /home/pi/INFO_RXF
# FIN Escribe en el fichero INFO_RXF para poner los datos del icono INFO TXF

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_solodstar.desktop /home/pi
sed -i "6c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh cerrar_solodstar.sh'" /home/pi/Abrir_solodstar.desktop
sed -i "7c Icon=/home/pi/$SCRIPTS_version/SOLO_D-STAR_ON.png" /home/pi/Abrir_solodstar.desktop
sed -i "11c Name[es_ES]=Cerrar solo D-STAR" /home/pi/Abrir_solodstar.desktop
sed -i "13c SOLODSTAR=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_solodstar.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_solodstar.desktop

# Pone Enable=0 en [Dstar Network]
sed -i "62c Enable=0" /opt/MMDVM_Bridge/MMDVM_Bridge.ini
sudo systemctl stop ircddbgateway
sudo systemctl restart mmdvm_bridge.service

# Ejecuta Solo D-STAR
cd /home/pi/MMDVMHost
echo "\33[1;32m"
clear
echo "***********************************************"
echo "*             ABRIENDO SOLO D-STAR            * "
echo "***********************************************"
sleep 1
sudo ircddbgateway -gui & sudo ./MMDVMDSTAR MMDVMDSTAR.ini

# Cierra el icono Abrir Solo Dstar si no hay conecta
cd /home/pi/Desktop
sudo cp Abrir_solodstar.desktop /home/pi
sed -i "6c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh ejecutar_solodstar.sh'" /home/pi/Abrir_solodstar.desktop
sed -i "7c Icon=/home/pi/$SCRIPTS_version/SOLO_D-STAR.png" /home/pi/Abrir_solodstar.desktop
sed -i "11c Name[es_ES]=Abrir solo D-STAR" /home/pi/Abrir_solodstar.desktop
sed -i "13c SOLODSTAR=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_solodstar.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_solodstar.desktop