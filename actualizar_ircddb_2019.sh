#!/bin/bash
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
echo " *********************************************************************"
echo " *                                                                   *"
echo " *                      REINICIAR RASPBERRY PI                       *"
echo " *                                                                   *"
echo " *********************************************************************"
echo ""
echo "${CIAN}"
echo -n " Quieres Reiniciar S/N ? "
read activar
case "$activar" in
[sS]* )
clear

read
break;;
[nN]*) 
exit ;;
esac









						  # read -p 'Quieres actualizar Ircddbgateway a la última versión ? S/N ' actualizar             	                           
        #                   case $actualizar in
			     #          [sS]* ) echo ""
						  # echo "Estas actualizando"
						  # read a
						  # break;;
			     #          [nN]* ) echo ""
						  # echo " No actualiza"
						  # read a
			     #          break;;
						  # esac
						  # echo "No se te ocurra dar al enter"
						  # read a


# sudo mv /usr/local/bin/ircddbgateway /usr/local/bin/ircddbgateway_2016
# sudo mv /usr/local/bin/ircddbgatewayconfig /usr/local/bin/ircddbgatewayconfig_2016
# sudo mv /usr/local/bin/remotecontrol /usr/local/bin/remotecontrol_2016

# sudo cp /home/pi/V104/ircddbgateway /usr/bin/ircddbgateway
# sudo cp /home/pi/V104/ircddbgatewayconfig /usr/bin/ircddbgatewayconfig
# sudo cp /home/pi/V104/remotecontrol /usr/bin/remotecontrol

# sudo rm -R /usr/share/opendv
# sudo mkdir /usr/share/opendv
# sudo cp /usr/local/share/opendv/*.ambe /usr/share/opendv/
# sudo cp /usr/share/ircddbgateway/*.* /usr/share/opendv/


# sudo rm -R /var/log/opendv
# sudo mkdir /var/log/opendv
