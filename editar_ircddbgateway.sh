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
echo "       CONFIGURAR IRCDDBGATEWAYDE UNA SOLA VEZ TODOS LOS .inis       "
echo -n "${ROJO}"
echo "                             $SCRIPTS_version by EA3EIZ"
echo -n "${VERDE}"
echo "   **************************************************************************"

echo -n "${CIAN}   1)${GRIS} Modificar indicativo  - ${AMARILLO}"
#indicativo= sed -n '2p' /usr/local/etc/opendv/ircddbgateway
indicativo=`grep -n "gatewayCallsign=" /usr/local/etc/opendv/ircddbgateway`
indicativo=`expr substr $indicativo 19 7`
echo "$indicativo"

echo ""
echo "   ${ROJO}0) Salir"
echo ""
echo -n "\33[1;36m   Elige una opción: " 

read escoger_menu
case $escoger_menu in
1) echo ""
while true
do

                        read -p 'Introduce tu indicativo: ' indicativo
                        actualizar=S 
                        case $actualizar in
			            [sS]* ) echo ""
                        
                        #Convierte indicativo si se introduce en minúsculas a Mayúsculas
                        indicativo=`echo "$indicativo" | tr [:upper:] [:lower:]`
                        sudo sed -i "2c gatewayCallsign=$indicativo" /usr/local/etc/opendv/ircddbgateway

                        #Convierte indicativo si se introduce en minúsculas a Mayúsculas
                        # tu_indicativo=`echo "$tu_indicativo" | tr [:upper:] [:lower:]`
                        # sudo sed -i "95c ircddbUsername=$tu_indicativo" /usr/local/etc/opendv/ircddbgateway

                        #Convierte indicativo si se introduce en minúsculas a Mayúsculas
                        # tu_indicativo=`echo "$tu_indicativo" | tr [:lower:] [:upper:]`
                        # sudo sed -i "116c dplusLogin=$tu_indicativo  " /usr/local/etc/opendv/ircddbgateway
			            break;;
			            [nN]* ) echo ""
			            break;;
esac
done;;
0) echo ""
clear
echo "\33[1;33m   **************************************************"
echo "   *                                                *"
echo "   *     CERRANDO SCRIPT                            *"
echo "   *                                                *"
echo "   **************************************************"
sleep 1
clear
exit;;	
esac
done

