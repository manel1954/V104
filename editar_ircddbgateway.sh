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

echo -n "${CIAN}   1)${GRIS} Modificar indicativo  - ${AMARILLO}"
indicativo=`grep "gatewayCallsign=" /usr/local/etc/opendv/ircddbgateway`
echo "$indicativo"

echo -n "${CIAN}   2)${GRIS} Modificar Ciudad      - ${AMARILLO}"
ciudad=`grep "description1=" /usr/local/etc/opendv/ircddbgateway`
contenido_ciudad=$(awk "NR==10" /usr/local/etc/opendv/ircddbgateway)
echo "$ciudad"

echo -n "${CIAN}   3)${GRIS} Modificar Reflector   - ${AMARILLO}"
sala=`grep "reflector1=" /usr/local/etc/opendv/ircddbgateway`
contenido_reflector=$(awk "NR==18" /usr/local/etc/opendv/ircddbgateway)
echo "$sala"

echo -n "${CIAN}   4)${GRIS} Modificar Url         - ${AMARILLO}"
url=`grep "url=" /usr/local/etc/opendv/ircddbgateway`
contenido_url=$(awk "NR==21" /usr/local/etc/opendv/ircddbgateway)
echo "$url"

echo -n "${CIAN}   5)${GRIS} Modificar Frecuencia  - ${AMARILLO}"
frecuencia=`grep "frequency1=" /usr/local/etc/opendv/ircddbgateway`
echo "$frecuencia"

echo ""
echo "   ${ROJO}0) Volver"
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
                        indicativo=`echo "$indicativo" | tr [:lower:] [:upper:]`
                        sed -i "2c gatewayCallsign=$indicativo" /usr/local/etc/opendv/ircddbgateway

                        #Convierte indicativo si se introduce Mayúsculas a minúsculas 
                        indicativo=`echo "$indicativo" | tr [:upper:] [:lower:]`
                        sudo sed -i "95c ircddbUsername=$indicativo" /usr/local/etc/opendv/ircddbgateway

                        #Convierte indicativo si se introduce en minúsculas a Mayúsculas
                        indicativo=`echo "$indicativo" | tr [:lower:] [:upper:]`
                        sed -i "116c dplusLogin=$indicativo  " /usr/local/etc/opendv/ircddbgateway
			break;;
			[nN]* ) echo ""
			break;;
                        esac
done;;
2) echo ""
while true
do
                        echo "Valor de la Ciudad: ${AMARILLO}${contenido_ciudad#*=}\33[1;37m"
                        read -p 'Introduce tu Ciudad: ' ciudad
                        actualizar=S 
                        case $actualizar in
                        [sS]* ) echo ""
                        sudo sed -i "10c description1=$ciudad" /usr/local/etc/opendv/ircddbgateway
                        sudo sed -i "27c description_1=$ciudad" /usr/local/etc/opendv/ircddbgateway
                        break;;
                        [nN]* ) echo ""
                        break;;
                        esac
done;;
3) echo ""
while true
do

                        echo "Valor del Reflector: ${AMARILLO}${contenido_reflector#*=}\33[1;37m"
                        read -p 'Introduce Reflector: ' reflector
                        actualizar=S 
                        case $actualizar in
                        [sS]* ) echo ""
                        reflector=`echo "$reflector" | tr [:lower:] [:upper:]`
                        sudo sed -i "18c reflector1=$reflector" /usr/local/etc/opendv/ircddbgateway
                        break;;
                        [nN]* ) echo ""
                        break;;
                        esac
done;;
4) echo ""
while true
do

                        echo "Valor de la Url: ${AMARILLO}${contenido_url#*=}\33[1;37m"
                        read -p 'Introduce Url: ' web
                        actualizar=S 
                        case $actualizar in
                        [sS]* ) echo ""
                        sudo sed -i "12c url=$web" /usr/local/etc/opendv/ircddbgateway
                        sudo sed -i "29c url1=$web" /usr/local/etc/opendv/ircddbgateway
                        break;;
                        [nN]* ) echo ""
                        break;;
                        esac
done;;
5) echo ""
while true
do

                        read -p 'Introduce Url: ' frecuencia
                        actualizar=S 
                        case $actualizar in
                        [sS]* ) echo ""
                        sudo sed -i "21c frequency1=$frecuencia" /usr/local/etc/opendv/ircddbgateway
                        break;;
                        [nN]* ) echo ""
                        break;;
                        esac
done;;
0) echo ""
exit;;	
esac
done

