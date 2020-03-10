#!/bin/bash

while true
do
clear
usuario="/home/pi"
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
AUTOARRANQUE="AUTOARRANQUE"
AUTOARRANQUE=$AUTOARRANQUE$SCRIPTS_version
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
echo "${VERDE}"
echo "   ************************************************************************"
echo -n "${CIAN}"
echo "     Script para Actualizar, instalar programas y ejecutar aplicaciones    "
echo -n "${ROJO}"
echo "                              $SCRIPTS_version by EA3EIZ"
echo -n "${VERDE}"
echo "   ************************************************************************"
#echo "\33[1;36m   1)\33[1;37m Actualizar imagen"
echo "\33[1;36m   1)${AMARILLO} Actualizar Dvswitch"
echo "\33[1;36m   2)${AMARILLO} Actualizar ${AMARILLO}YSF,${AMARILLO} YSF2DMR, DMR2YSF, DMR2NXDN y NXDNClients"
echo ""
echo "\33[1;32m      APARTADO BLUETOOTH"
echo "\33[1;32m      =================="
echo "\33[1;36m   3)\33[1;33m Activar el Bluetooth (en la imagen viene desactivado por defecto)"
echo "\33[1;36m   4)\33[1;33m Desactivar Bluetooth (esto habilita el puerto /dev/ttyAMA0)"
echo "\33[1;36m   5)\33[1;32m PDF con las instrucciones para emparejar el Bluetooth"
echo "\33[1;36m   6)\33[1;37m Anclar el puerto rfcomm0 para conectar el Bluetooth para siempre"
echo "\33[1;36m   7)\33[1;37m Anclar el puerto rfcomm1 para conectar el Bluetooth para siempre"
echo "\33[1;32m      =================="
echo ""
echo "${CIAN}   8)${AMARILLO} Instalar Anydesk"
echo "${CIAN}   9)${BLANCO} Grabar pantalla Nextion"
echo "${CIAN}  10)${VERDE} Menú Actualizar MMDVM_HS Libre kit y ZUMSpot"
echo ""
echo "${CIAN}  11)${BLANCO} RESET (RESTAURA IMAGEN DE FABRICA)"
echo ""
echo "   ${ROJO}0) Salir"
echo ""
echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu
echo ""
case $escoger_menu in
test) echo ""
while true
do
clear                     
                        instalarsi=S
                        case $instalarsi in
                        [sS]* ) echo ""
                        cd /tmp
                        git clone http://github.com/ea3eiz/test
                        cd test
                        sudo sh script_raspberry.sh                  
                        break;;
                        [nN]* ) echo ""
                        clear
                        exit;
                        break;;
esac
done;;
a) echo ""
while true
do
clear                     
                        instalarsi=S
                        case $instalarsi in
                        [sS]* ) echo ""
#Actualiza todos los iconos y Quita todos los iconos verdes que se quedan al cerrar la imagen

sudo cp $usuario/Desktop/Activar_dvswitch.desktop $usuario #deja el icono en el estado que se reinició
sudo cp $usuario/Desktop/Activar_NextionDriver.desktop $usuario #deja el icono en el estado que se reinició
#sudo cp $usuario/Desktop/Abrir_ircDDBGateway.desktop $usuario #deja con el terminal en el estado que se reinició
#sudo cp $usuario/Desktop/Abrir_D-STARRepeater.desktop $usuario #deja con el terminal en el estado que se reinició

cd $usuario/$SCRIPTS_version/Desktop
cp * $usuario/Desktop
sleep 1

sudo cp $usuario/Activar_dvswitch.desktop $usuario/Desktop #deja el icono en el estado que se reinició
sudo cp $usuario/Activar_NextionDriver.desktop $usuario/Desktop #deja el icono en el estado que se reinició
#sudo cp $usuario/Abrir_ircDDBGateway.desktop $usuario/Desktop #deja con el terminal en el estado que se reinició
#sudo cp $usuario/Abrir_D-STARRepeater.desktop $usuario/Desktop #deja con el terminal en el estado que se reinició


sudo chmod 777 -R $usuario/Desktop
cd $usuario
sleep 2
exit;                
                        break;;
                        [nN]* ) echo ""
                        clear
                        exit;
                        break;;
esac
done;;
1) echo ""
while true
do
clear                     
                        instalarsi=S
                        case $instalarsi in
                        [sS]* ) echo ""
                        clear
                        cd /home/pi/$SCRIPTS_version/
                        sh Actualizar_dvswitch.sh                  
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
                        instalarsi=S
                        case $instalarsi in
                        [sS]* ) echo ""
                        clear
                        cd /home/pi/$SCRIPTS_version/
                        sh actualiza_YSF_YSF2DMR_DMR2YSF_DMR2NXDN_NXDNClients.sh                  
                        break;;
                        [nN]* ) echo ""
                        clear
                        exit;
                        break;;
esac
done;;
3) echo ""
while true
do
clear
echo "${ROJO}"
echo "   ****************************************************"
echo "   *            SI SE ACTIVA EL BLUETOOTH             *"
echo "   * EL DVMEGA PINCHADO EN LA RASPBERRY NO FUNCIONARÁ *"
echo "   * SE REINICIARÁ EL SISTEMA PARA APLICAR EL CAMBIO  *"
echo "   ****************************************************"
echo ""
echo "${VERDE}"                                               
read -p ' QUIERES SEGUIR CON EL CAMBIO S/N: ' seguir
	                        case $seguir in
			            [sS]* ) echo ""
					echo "ACTIVANDO BLUETOOTH"
					sed -i "57c #dtoverlay=pi3-disable-bt" /boot/config.txt
			            sudo reboot
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
echo "${ROJO}"
echo "   ***************************************************"
echo "   *         SI SE DESACTIVA EL BLUETOOTH            *"
echo "   * SE REINICIAR EL SISTEMA PARA APLICAR EL CAMBIO  *"
echo "   ***************************************************"
echo "" 
echo "${VERDE}"                                              
read -p ' QUIERES SEGUIR CON EL CAMBIO S/N: ' seguir
                        case $seguir in
                        [sS]* ) echo ""
                        echo "DESACTIVANDO BLUETOOTH"
                        sed -i "57c dtoverlay=pi3-disable-bt" /boot/config.txt
                        sudo reboot
                        break;;
                        [nN]* ) echo ""
clear
break;;
esac
done;;
5) echo ""
while true
do
clear

	                	ejecutar1=S
		    			case $ejecutar1 in
						[sS]* ) echo ""
						echo ">>>>>>>>> EMPAREJAR BLUETOOTH >>>>>>>>"
                        cd /home/pi/SCRIPTS_version
                        evince ./EMPAREJAR_BLUETOOTH.pdf
                        clear
                        exit;
						break;;
						[nN]* ) echo ""
						clear
						exit;
						break;;
esac
done;;
6) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
		                [sS]* ) echo "\33[1;32m<<<< ESCANEANDO DISPOSITIVOS BLUETOOTH >>>>"
						echo ""
						echo "\33[1;36m" # color Cian
						sudo hcitool scan
						echo "\33[1;32m" #color verde
						echo "Copia la mac del modulo Bluetooth HC-05 para pegarla en el siguiente paso"
						echo ""
						echo "\33[1;33m" #amarillo
			            echo "PEGA LA MAC DE TU BLUETOOTH aquí y pulsa Enter"	          		            
			            read mac
						sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;sudo sh actualizar.sh;sudo rfcomm bind /dev/rfcomm0 $mac'" /home/pi/.config/autostart/actualizar.desktop
						clear
						echo ""
						echo ""
						echo ""
						echo "\33[1;31m" #color rojo
						echo "********************************************************************"
						echo "* SE NECESITA REINICIAR EL SISTEMA PARA ANCLAR EL PUERTO rfcomm0   *"
						echo "********************************************************************"
						echo "\33[1;37m" #color
						echo "Pulsa Enter para salir"
			            read a
			            break;;
		                [nN]* ) echo " "
clear
exit;
break;;
esac
done;;
7) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
		                [sS]* ) echo "\33[1;32m<<<< ESCANEANDO DISPOSITIVOS BLUETOOTH >>>>"
						echo ""
						echo "\33[1;36m" # color Cian
						sudo hcitool scan
						echo "\33[1;32m" #color verde
						echo "Copia la mac del modulo Bluetooth HC-05 para pegarla en el siguiente paso"
						echo ""
						echo "\33[1;33m" #amarillo
			            echo "PEGA LA MAC DE TU BLUETOOTH aquí y pulsa Enter"	          		            
			            read mac
						sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;sudo sh actualizar_02_07_06.sh;sudo rfcomm bind /dev/rfcomm1 $mac'" /home/pi/.config/autostart/actualizar.desktop
						clear
						echo ""
						echo ""
						echo ""
						echo "\33[1;31m" #color rojo
						echo "********************************************************************"
						echo "* SE NECESITA REINICIAR EL SISTEMA PARA ANCLAR EL PUERTO rfcomm1   *"
						echo "********************************************************************"
						echo "\33[1;37m" #color
						echo "Pulsa Enter para salir"
			            read a
			            break;;
		                [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
8) echo ""
while true
do
clear
                        echo "${VERDE}"
                        echo "*************************************************"
                        echo "*  ${ROJO}ADVERTENCIA!!!${VERDE}                               *"
                        echo "*  ${ROJO}AL INSTALAR ANYDESK SE REINICIARÁ EL SISTEMA${VERDE} *"
                        echo "*************************************************"
                        echo "${CIAN}" 
                        read -p 'Quieres instalar Anydesk ? S/N ' actualizar                                              
                        case $actualizar in
                        [sS]* ) echo ""
                        clear
                        echo "${VERDE}"
                        echo "*******************************************"
                        echo "*           INSTALANDO ANYDESK            *"
                        echo "*******************************************"
                        sleep 2  
                        sudo rm -R /home/pi/.anydesk
                        cd /home/pi/Downloads
                        wget http://download.anydesk.com/rpi/anydesk_2.9.4-1_armhf.deb
                        sudo dpkg -i anydesk_2.9.4-1_armhf.deb
                        clear
                        echo "${VERDE}"
                        echo "*******************************************"
                        echo "*        SE HA INSTALADO ANYDESK          *"
                        echo "*******************************************"
                        sleep 2
                        clear
                        echo "${ROJO}"
                        echo "*******************************************"
                        echo "*        SE REINICIARÁ EL SISTEMA         *"
                        echo "*******************************************"
                        sleep 2
                        clear
                        echo "${AMARILLO}"
                        echo "*******************************************"
                        echo "*        SE REINICIARÁ EL SISTEMA         *"
                        echo "*******************************************"
                        sleep 2
                        clear
                        echo "${ROJO}"
                        echo "*******************************************"
                        echo "*        SE REINICIARÁ EL SISTEMA         *"
                        echo "*******************************************"
                        sleep 2
                        sudo reboot
                        break;;
                        [nN]* ) 
                        echo ""
clear
exit;
break;;
esac
done;;
9) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> GRABAR NEXTION ORIGINAL >>>>>>>>"
                        sudo sh grabar_nextion_05.sh
                        exit;
		                break;;
		                [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
10) echo ""
while true
do
clear
                                ejecutar1=S
                                case $ejecutar1 in
                                [sS]* ) echo ""

echo "${AMARILLO}"
echo "   *********************************************************************"
echo "   * Haz clik en el icono donde tengas conectado el pincho             *"
echo "   * una vez se abra la consola mostrando que se conectó correctamente *"
echo "   * cierra dicha consola y utiliza el MENÚ que te aparecerá           *"
echo "   *********************************************************************"
echo "${VERDE}"
echo -n "    Pulsa una tecla para seguir "
read a
                                sh flash_mmdvm_hs.sh
                                echo ""
                                break;;
                                [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
11) echo ""
while true
do
clear
echo "${ROJO}"
echo "   ************************************************************************"
echo "   *                                                                      *"
echo "   *                     RESTAURAR IMAGEN DE FABRICA                      *"
echo "   *                     TAL CUAL GRABASTES EN SU DÍA                     *"
echo "   *                                                                      *"
echo "   ************************************************************************"
echo ""
                    echo "${VERDE}"                                               
                    read -p '   QUIERES SEGUIR S/N: ' seguir
                    case $seguir in
                    [sS]* ) echo ""
                    echo ""
                    break;;
                    [nN]* ) 
                    echo ""

clear
break;;
esac
done;;
a) echo ""
while true
do
clear
                                ejecutar1=S
                                case $ejecutar1 in
                                [sS]* ) echo ""
                                cd /home/pi
                                git clone https://github.com/ea3eiz/AMBE_SERVER
                                cd home/pi/AMBE_SERVER
                                sleep 2
                                make
                                cd /home/pi/V104/Desktop
                                sudo cp Abrir_ambe_server.desktop /home/pi/Desktop

                                sudo cp editar_ambe_server.desktop /home/pi/Desktop
                                echo ""
                                exit;
                                break;;
                                [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
0) echo ""
clear
echo "${AMARILLO}"
echo "   ************************************************************************"
echo "   *                                                                      *"
echo "   *                          CERRANDO SCRIPT                             *"
echo "   *                                                                      *"
echo "   ************************************************************************"
sleep 2
clear
exit;;	
esac
done
