#!/bin/bash
clear
while true
do
clear

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)

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
echo "                    SCRIPT PARA CONFIGURAR IRCDDBGATEWAY      "
echo -n "${ROJO}"
echo "                                  $SCRIPTS_version by EA3EIZ"
echo -n "${VERDE}"
echo "   **************************************************************************"
echo ""
echo  "${CIAN}   MENU EDITAR IRCDDB 2016"
echo  "${CIAN}   ======================="
echo  "${CIAN}   1)${AMARILLO} Editar Graficamente"
echo  "${CIAN}   2)${AMARILLO} Editar desde Consola"
echo ""
echo  "${BLANCO}   MENU EDITAR IRCDDB NEW 2019"
echo  "${BLANCO}   ==========================="
echo  "${CIAN}   3)${AMARILLO} Editar Graficamente"
echo  "${CIAN}   4)${AMARILLO} Editar desde Consola"
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
                        cd /home/pi/V104
                        sh popus_editar_ircddb.sh
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
0) echo ""
exit;;	
esac
done

