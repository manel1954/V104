#!/bin/bash

#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
#echo "${BLANCO}"
#echo "   ****************************************************************"
#echo "   * SI ACTIVAMOS EL DVSWITCH SE CERRARAN LOS SISTEMAS SIGUIENTES *"
#echo "   *       Y NO SE PODRAN VOLVER A UTILIZAR HASTA QUE NO          *"
#echo "   *                    CERREMOS EL DVSWITCH                      *"
#echo "   ****************************************************************"
#echo "${VERDE}"
#echo "   YSF2DMR"
#echo "   DMR2YSF"
#echo "   DMR2NXDN"
#echo "   NXDN"
#echo "${CIAN}"
#echo -n "   "

echo "${VERDE}"
read -p 'Quieres activar DVSWITCH? S/N ' seguir   
if [ "$seguir" = 'S' -o "$seguir" = 's' ];then 

#sudo cp /home/pi/Desktop/Abrir_dstarrepeater.desktop /home/pi
#sed -i "9c Terminal=true" /home/pi/Abrir_dstarrepeater.desktop
#sudo cp /home/pi/Abrir_dstarrepeater.desktop /home/pi/Desktop
#sleep 1
#sudo rm /home/pi/Abrir_dstarrepeater.desktop

#sudo cp /home/pi/Desktop/Abrir_ircDDB.desktop /home/pi
#sed -i "9c Terminal=true" /home/pi/Abrir_ircDDB.desktop
#cd 
#sudo cp /home/pi/Abrir_ircDDB.desktop /home/pi/Desktop
#sleep 1
#sudo rm /home/pi/Abrir_ircDDB.desktop

#cd /home/pi/$SCRIPTS_version
#bm=$(awk "NR==7" /home/pi/status.ini)
#if [ "$bm" = 'MMDVMBM=ON' ];then
#sudo sh cerrar_bm.sh
#clear
#echo "${VERDE}"
#echo "*******************************"
#echo "         CERRANDO BM"
#echo "*******************************"
#fi

#plus=$(awk "NR==6" /home/pi/status.ini)
#if [ "$plus" = 'MMDVMPLUS=ON' ];then
#sudo sh cerrar_DMRPLUS.sh
#clear
#echo "${VERDE}"
#echo "*******************************"
#echo "        CERRANDO BM"
#echo "*******************************"
#fi

#libre=$(awk "NR==10" /home/pi/status.ini)
#if [ "$libre" = 'MMDVMLIBRE=ON' ];then
#sudo sh cerrar_LIBRE.sh
#clear
#echo "${VERDE}"
#echo "*******************************"
#echo "        CERRANDO LIBRE"
#echo "*******************************"
#fi

#radio=$(awk "NR==5" /home/pi/status.ini)
#if [ "$radio" = 'MMDVM=ON' ];then
#sudo sh cerrar_radio.sh
#clear
#echo "${VERDE}"
#echo "*******************************"
#echo "       CERRANDO RADIO"
#echo "*******************************"
#fi

#solofusion=$(awk "NR==12" /home/pi/status.ini)
#if [ "$solofusion" = 'SOLOFUSION=ON' ];then
#sudo sh cerrar_solofusion.sh
#clear
#echo "${VERDE}"
#echo "*******************************"
#echo "     CERRANDO solo FUSION"
#echo "*******************************"
#fi

#ysf2dmr=$(awk "NR==14" /home/pi/status.ini)
#if [ "$ysf2dmr" = 'YSF2DMR=ON' ];then
#sudo sh cerrar_YSF2DMR.sh
#clear
#echo "${VERDE}"
#echo "*******************************"
#echo "      CERRANDO YSF2DMR"
#echo "*******************************"
#fi

#dmr2ysf=$(awk "NR==15" /home/pi/status.ini)
#if [ "$dmr2ysf" = 'DMR2YSF=ON' ];then
#sudo sh cerrar_DMR2YSF.sh
#clear
#echo "${VERDE}"
#echo "*******************************"
#echo "      CERRANDO DMR2YSF"
#echo "*******************************"
#fi

#dmr2nxdn=$(awk "NR==16" /home/pi/status.ini)
#if [ "$dmr2nxdn" = 'DMR2NXDN=ON' ];then
#sudo sh cerrar_DMR2NXDN.sh
#clear
#echo "${VERDE}"
#echo "*******************************"
#echo "      CERRANDO DMR2NXDN"
#echo "*******************************"
#fi

#nxdn=$(awk "NR==17" /home/pi/status.ini)
#if [ "$nxdn" = 'NXDN=ON' ];then
#sudo sh cerrar_NXDN.sh
#clear
#echo "${VERDE}"
#echo "*******************************"
#echo "CERRANDO NXDN"
#echo "*******************************"
#fi

#sleep 2

cd /home/pi/Desktop
sudo cp Activar_dvswitch.desktop /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh stop_dvswitch.sh'" /home/pi/Activar_dvswitch.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICONO_DVSWITCH_ON.png" /home/pi/Activar_dvswitch.desktop
sed -i "10c Name[es_ES]=Parar Dvswitch" /home/pi/Activar_dvswitch.desktop

cd /home/pi
sudo cp Activar_dvswitch.desktop /home/pi/Desktop
sleep 2
sudo rm /home/pi/Activar_dvswitch.desktop

sudo systemctl restart ysfgateway.service
sudo systemctl restart dmr2ysf.service

sudo systemctl restart analog_bridge.service
sudo systemctl restart ircddbgateway.service
sudo systemctl restart md380-emu.service
sudo systemctl restart mmdvm_bridge.service
sudo systemctl restart nxdngateway.service

clear
echo "${BLANCO}"
echo "   ***************************************************************************"
echo "   ***************************************************************************"					
echo "   ***************************************************************************"
echo "   ***************************************************************************"
echo "   ***************************************************************************"
echo "   ***************************************************************************"
echo "   ***************************************************************************"
echo "   ***************************************************************************"
echo "   ***************************************************************************"
echo "   ***************************************************************************"
echo "   *                                                                         *"
echo -n "${VERDE}"
echo "                           SE HA ACTIVADO DVSWITCH                            "
echo -n "${BLANCO}"
echo "   *                                                                         *"
echo "   ***************************************************************************"	
echo "   ***************************************************************************"
echo "   ***************************************************************************"
echo "   ***************************************************************************"
echo "   ***************************************************************************"					
echo "   ***************************************************************************"
echo "   ***************************************************************************"
echo "   ***************************************************************************"
echo "   ***************************************************************************"
echo "   ***************************************************************************"
sleep 3
sed -i "18c DVSWITCH=ON" /home/pi/status.ini	
fi				