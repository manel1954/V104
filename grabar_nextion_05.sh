#!/bin/bash
while true
do
clear
echo "\33[1;32m   ********************************************************************"
echo "   *      Script para Grabar pantallas Nextion \33[1;33mV.02.07.06             \33[1;32m*"
echo "   *                          \33[1;31mby EA3EIZ\33[1;32m                               *"
echo "   ********************************************************************"
echo '\33[1;36m   1)\33[1;32m Grabar pantalla Nextion 2.4" ADER (Compatible Nextion Driver)'
echo ""
echo '\33[1;36m   2)\33[1;32m Grabar pantalla Nextion 2.4" MMDVM ON7LDS original'
echo '\33[1;36m   3)\33[1;32m Grabar pantalla Nextion 2.8" MMDVM ON7LDS original'
echo '\33[1;36m   4)\33[1;32m Grabar pantalla Nextion 3.2" MMDVM ON7LDS original'
echo '\33[1;36m   5)\33[1;32m Grabar pantalla Nextion 4.3" MMDVM ON7LDS original'
echo ""

echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu
echo ""
case $escoger_menu in

a) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> NextionDriver ADER_07.tft >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al ON7LDS
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_ON7LDS
			            cd /home/pi/MMDVMHost/Nextion_ON7LDS
			            sudo rm NX3224T024_2.4_Time_REM.tft
			            wget http://associacioader.com/NX3224T024_2.4_Time_REM.tft
                        sudo python nextion.py NX3224T024_2.4_Time_REM.tft /dev/ttyUSB0
                        sleep 10
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
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> NextionDriver ADER_07.tft >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al ON7LDS
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_ON7LDS
			            cd /home/pi/MMDVMHost/Nextion_ON7LDS
			            sudo rm ADER_07.tft
			            wget http://associacioader.com/ADER_07.tft
                        sudo python nextion.py ADER_07.tft /dev/ttyUSB0
                        sleep 10
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
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> GRABAR NEXTION ORIGINAL 2.4 pulgadas >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_ON7LDS
                        cd /home/pi/MMDVMHost/Nextion_ON7LDS
                        sudo python nextion.py NX3224T024.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						#
						exit;
						break;;
esac
done;;
3) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> GRABAR NEXTION ORIGINAL 2.8 pulgadas >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_ON7LDS
                        cd /home/pi/MMDVMHost/Nextion_ON7LDS
                        sudo python nextion.py NX3224T028.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
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
			            echo ">>>>>>>>> GRABAR NEXTION ORIGINAL 3.2 pulgadas >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_ON7LDS
                        cd /home/pi/MMDVMHost/Nextion_ON7LDS
                        sudo python nextion.py NX3224T032.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
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
			            echo ">>>>>>>>> GRABAR NEXTION ORIGINAL 4.3 pulgadas >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_ON7LDS
                        cd /home/pi/MMDVMHost/Nextion_ON7LDS
                        sudo python nextion.py NX3224T043.tft /dev/ttyUSB0
                        sleep 10
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

