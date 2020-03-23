#!/bin/bash
while true
do
clear
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"

echo "${VERDE}"
echo "   *************************************************************************"
echo "   *           Script para actualizar MMVDM_HS Libre Kit y ZUMSpot \33[1;33m    \33[1;32m     *"
echo "   *                             \33[1;31mby EA3EIZ\33[1;32m                                 *"
echo "   *************************************************************************"
echo ""
echo "${CIAN}   1)${VERDE} Descargar y compilar el último firmware MMDVM_HS Libre Kit"
echo ""

echo "${CIAN}   2)${AMARILLO} Grabar firmware MMDVM_HS Libre Kit por USB (host del STM)"
echo ""
echo "${CIAN}   3)${AMARILLO} Grabar firmware MMDVM_HS Libre Kit por USART_1 (adaptador usb-ttl)"
echo ""
echo "${CIAN}   4)${BLANCO} MENÚ ACTUALIZACIÓN ZUMSpot"
echo "\v\v"
echo "   ${ROJO}0) Menú Principal"
echo "\v\v"
echo "   ${VERDE}Versión actual del firmware:"
echo -n "${BLANCO}   "
tac $(ls -1rt /home/pi/MMDVMHost/MMDVM-*.log | tail -n1 ) | grep "protocol" -m 1 | sed -n 's/description: /&\n/;s/.*\n//p'
#echo "La versión se actualiza al abrir de nuevo MMMDVMHost"
echo ""

echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu
echo ""
case $escoger_menu in
1) echo ""
while true
do
clear
                        echo "${VERDE}"
                        read -p 'Quieres continuar con la descarga ? S/N: ' continuar
                        case $continuar in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DESCARGANDO FIRMWARE "
                        echo "${CIAN}"
                        cd /home/pi/
                        sudo rm -R MMDVM_HS 
                        git clone https://github.com/juribeparada/MMDVM_HS
                        cd MMDVM_HS/
                        git submodule init
                        git submodule update

                        clear
echo "${VERDE}"
echo "   ******************************************"
echo "   *                                        *"
echo "   *     PROCESO DE DESCARGA FINALIZADO     *"
echo "   *                                        *"
echo "   ******************************************"
sleep 3
clear
                        echo "${VERDE}"
                        echo -n "Quieres editar el fichero de configuración Config.h ? S/N: "
                        
                        read siguiente
                        if [ "$siguiente" = "S" -o "$siguiente" = "s" ]
                        then
                        echo "${AMARILLO}"
                        echo "Haga los cambios necesarios y cierre el editor para continuar"
                        sudo geany /home/pi/MMDVM_HS/Config.h
clear
echo "${ROJO}"
echo "            *******************************************************"
echo "            *                                                     *"  
echo "            *                PROCESO DE COMPILACIÓN               *"
echo "            *                                                     *"
echo "            *******************************************************"
                        sleep 3
echo "${CIAN}"
                        make clean
                        make bl
                        else
clear                                
echo "${ROJO}"
echo "\v\v\v\v\v\v\v\v"
echo "            *******************************************************"
echo "${AMARILLO}"
echo "                           PROCESO DE COMPILACIÓN "
echo "${VERDE}"
echo "            SE COMPILARÁ MMDVM_HS SIN RESTRICCIONES DE FRECUENCIA  "
echo "                              Y RSSI ACTIVADO "
echo "${ROJO}"
echo "            *******************************************************"
echo ""
echo "${CIAN}"
echo -n "             Pulsa una tecla para continuar "
read a

                        

                        cp /home/pi/V104/Config_librekit.h /home/pi/MMDVM_HS/Config.h
                        make clean
                        make bl
                        fi
clear
echo "${VERDE}"
echo "            *******************************************************"
echo "            *                                                     *"  
echo "            *                  PROCESO FINALIZADO                 *"
echo "            *                                                     *"
echo "            *******************************************************"
sleep 3
clear
echo ""
echo ""
echo ""
echo ""


                        break;;
                        [nN]* ) echo ""
                        clear
                        exit;
                        break;;
esac
done;;     
2) echo ""
while true
do
clear
                        read -p 'Quieres grabar el firmware en tu dispositivo por el conector USB S/N ?: ' continuar
                        case $continuar in
                        [sS]* ) echo ""
                        echo ""
                        cd /home/pi/MMDVM_HS/
                        cp /home/pi/$SCRIPTS_version/install_fw_librekit.sh /home/pi/MMDVM_HS/bin/
                        cd /home/pi/MMDVM_HS/bin
                        sleep 2
                        sudo chmod 777 install_fw_librekit.sh
                        ./install_fw_librekit.sh
                        echo "${BLANCO}"
                        echo "SE HA ACTUALIZADO A LA ÚLTIMA VERSIÓN:"
                        echo "" 
                        sleep 2
                        exit;
                        break;;
                        [nN]* ) echo ""
                        clear
                        break;;
esac
done;;
3) echo ""
while true
do
clear
                        read -p 'Quieres grabar el firmware con bootloader en tu dispositivo con el conversor USB-TTL S/N ?: ' continuar
                        case $continuar in
                        [sS]* ) echo ""
                        echo ""
                        cd /home/pi/MMDVM_HS/
                        sudo make serial-bl devser=/dev/ttyUSB0
                        break;;
                        [nN]* ) echo ""
                        clear
                        break;;
esac
done;;
4) echo ""
while true
do
clear
                                ejecutar1=S
                                case $ejecutar1 in
                                [sS]* ) echo ""
                                sh flash_zumspot.sh
                                echo ""
                                break;;
                                [nN]* ) echo ""
                                clear
                                exit;
break;;
esac
done;;
0) echo ""
clear
echo "\33[1;33m   ******************************"
echo "   *                            *"
echo "   *     CERRANDO SCRIPT        *"
echo "   *                            *"
echo "   ******************************"
sleep 1
clear
exit;;  
esac
done

