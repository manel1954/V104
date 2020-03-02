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
version=$(awk "NR==11" $usuario/info.txt)
version=`expr substr $version 18 5`
echo "$version"
read a
if [$version = "6.0.2"]
then
	echo "la versión no ha cambiado"
else
	echo "la version ha cambiado"
fi
break;;
[nN]*) 
exit ;;
esac


