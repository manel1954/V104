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
echo  "${CIAN}   1)${AMARILLO} Editar salas, fichero DExtra_Host.txt"
echo ""
echo  "${CIAN}   2)${BLANCO} Editar por consola parametros Ircddbgateway"
echo ""
echo  "${CIAN}   3)${VERDE} Actualizar Ircddbgateway"
echo "\v\v"
echo "   ${ROJO}0) Salir"
echo "\v\v"
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
                        if [ "$version" = "2019" ]
                        then
                        cd /home/pi/V104
                        sh editar_ircddbgateway.sh 
                        else  
                        clear       
                        echo "${VERDE}"
                        echo "            *******************************************************       "
                        echo "${AMARILLO}"
                        echo "                   NO TIENES LA ÚLTIMA VERSIÓN DE IRCDDBGATEWAY           "
                        echo "                         ${CIAN}ACTUALIZA A LA VERSIÓN:${ROJO} 20190402   "
                        echo ""
                        echo "                                 ${BLANCO}OPCIÓN 3 DEL MENÚ               "
                        echo "${VERDE}"
                        echo "            *******************************************************       "
                        sleep 5
                        fi
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
                        clear       
                        echo "${VERDE}"
                        echo "            *******************************************************"
                        echo "${AMARILLO}"
                        echo "                     YA TIENES LA ÚLTIMA VERSIÓN:${CIAN} 20190402  "
                        echo "${VERDE}"
                        echo "            *******************************************************"
                        sleep 3
                        else
                        cd /home/pi/V104
                        sh actualizar_ircddb_2019.sh
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

