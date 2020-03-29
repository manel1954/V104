#!/bin/bash
clear
while true
do
clear

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
version=$(awk "NR==20" /home/pi/.local/versiones_YSF2DMR_DMR2YSF_DMR2NXDN.ini)
#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"

echo "${VERDE}"
echo "   **************************************************************************"
echo -n "${CIAN}"
echo "                              SCRIPT IRCDDBGATEWAY      "
echo -n "${ROJO}"
echo "                                  $SCRIPTS_version by EA3EIZ"
echo -n "${VERDE}"
echo "   **************************************************************************"
echo ""
echo  "${CIAN}   1)${AMARILLO} Editar salas DExtra_Host"
echo ""
echo  "${CIAN}   2)${AMARILLO} Editar parametros Ircddbgateway"
echo ""
echo ""
echo  "${CIAN}   3)${BLANCO} Actualizar Ircddbgateway"
echo ""
echo ""
echo "   ${ROJO}0) Salir"
echo ""
echo -n "\33[1;36m   Elige una opción: " 

read escoger_menu
case $escoger_menu in
1) echo ""
while true
do

                      
                        actualizar=S 
                        case $actualizar in
                        [sS]* ) echo ""
                        sudo geany /usr/local/share/opendv/DExtra_Hosts.txt
                        sudo cp /usr/local/share/opendv/DExtra_Hosts.txt /usr/share/opendv/DExtra_Hosts.txt
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
2) echo ""
while true
do

                      
                        actualizar=S 
                        case $actualizar in
			[sS]* ) echo ""
                        cd /home/pi/V104
                        sh editar_ircddbgateway.sh
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
3) echo ""
while true
do

                      
                        actualizar=S 
                        case $actualizar in
                        [sS]* ) echo ""
                        if [ "$version" = "2019" ]
                        then        
                        echo "Ya tienes la última"
                        read a
                        else
                        #cd /home/pi/V104
                        #sh actualizar_ircddb_2019.sh
                        echo "se actualizará"
                        sudo sed -i "20c 2019" /home/pi/.local/versiones_YSF2DMR_DMR2YSF_DMR2NXDN.ini
                        read a
                        fi
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
0) echo ""
exit;;	
esac
done

