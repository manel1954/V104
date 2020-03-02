#!/bin/bash
clear
# path usuario
usuario="/home/pi"
usuario=$(awk "NR==1" $usuario/.config/autostart/usuario)
SCRIPTS_version=$(awk "NR==1" $usuario/.config/autostart/version)
#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"

echo "${AMARILLO}"
echo -n " Quieres Actualizar Dvswitch S/N ? "
read activar
case "$activar" in
[sS]* )
clear
echo "${VERDE}"
echo " *********************************************************************"
echo " *                                                                   *"
echo " * <<<<<<<<<<<<<<<<<< ACTUALIZANDO DVSWITCH   >>>>>>>>>>>>>>>>>>>>>> *"
echo " *                                                                   *"
echo " *********************************************************************"
sleep 3

cd /var/www/html/Actualizar_DV_ADER_104
sudo rm -r Actualizar_DV_ADER_V104
git clone http://github.com/ea3eiz/Actualizar_DV_ADER_V104
sudo chmod 777 -R Actualizar_DV_ADER_V104
sh Actualizar_DV_ADER_V104.sh
break;;
[nN]*) 
exit ;;
esac


