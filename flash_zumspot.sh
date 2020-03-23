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
echo "   ********************************************************************"
echo "   *              Script para actualizar ZUMSpot     \33[1;33m       \33[1;32m          *"
echo "   *                          \33[1;31mby EA3EIZ\33[1;32m                               *"
echo "   ********************************************************************"
echo "${CIAN}   1)${VERDE} Descargar y compilar el último firmware MMDVM_HS ZUMSpot"
echo ""
echo "${CIAN}   2)${AMARILLO} Grabar firmware MMDVM_HS ZUMSpot Modificado (conector GPIO)"
echo ""
echo "${CIAN}   3)${AMARILLO} Grabar firmware MMDVM_HS ZUMSpot Original (conector GPIO)"
echo "\33[1;36m   0)\33[1;34m Salir "
echo "${ROJO}"
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
echo "   ******************************************"
echo "   *                                        *"
echo "   *        PROCESO DE COMPILACIÓN          *"
echo "   *                                        *"
echo "   ******************************************"
                        sleep 3
echo "${CIAN}"
                        make clean
                        make
                        else
clear                                
echo "${ROJO}"
echo "   ******************************************"
echo "   *                                        *"
echo "   *        PROCESO DE COMPILACIÓN          *"
echo "   *                                        *"
echo "   ******************************************"
                        sleep 3
echo "${CIAN}"
                        make clean
                        make
                        fi
clear
echo "${VERDE}"
echo "   ******************************"
echo "   *                            *"
echo "   *     PROCESO TERMINADO      *"
echo "   *                            *"
echo "   ******************************"
sleep 3
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
                        read -p 'Quieres grabar el firmware en tu dispositivo por GPIO S/N ?: ' continuar
                        case $continuar in
                        [sS]* ) echo ""
                        echo ""
                        cd /home/pi/MMDVM_HS/
                        cp /home/pi/$SCRIPTS_version/install_fw_librekit_gpio.sh /home/pi/MMDVM_HS/bin/
                        cd /home/pi/MMDVM_HS/bin
                        sleep 2
                        sudo chmod 777 install_fw_librekit_gpio.sh
                        ./install_fw_librekit_gpio.sh
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
read -p 'Quieres actualizar S/N: ' continuar
case $continuar in
[sS]* ) echo ""
echo ">>>>>>>>> ACTUALIZAR FIRMWARE ZUMSpot"
                     
    echo "${CIAN}"
    rm -rf /tmp/zumfirmware 2> /dev/null
    mkdir /tmp/zumfirmware 2> /dev/null
    echo "Flashing your ${1} modem to the latest version"
    curl -s -L https://github.com/juribeparada/MMDVM_HS/releases/latest | egrep -o '/juribeparada/MMDVM_HS/releases/download/v[0-9.]*/install_fw_rpi.sh' | wget --base=http://github.com/ -i - -O /tmp/zumfirmware/flash.sh
    chmod +x /tmp/zumfirmware/flash.sh
    cd  /tmp/zumfirmware
    ./flash.sh
    echo ""
    #rm -rf /tmp/zumfirmware 2> /dev/null
    echo "${BLANCO}"
    echo "SE HA ACTUALIZADO A LA ÚLTIMA VERSIÓN:"
    echo "${VERDE}"
    echo "" 
    read -p 'Pulsa una tecla para volver' continuar
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

