#!/bin/bash
clear
while true
do
clear

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)

ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"

echo "${VERDE}"
echo "   **************************************************************************"
echo -n "${CIAN}"
echo "       EDITAR NÚMERO DE SALA Y EL TG PARA ENTRAR EN DICHA SALA                  "
echo -n "${ROJO}"
echo "                             $SCRIPTS_version by EA3EIZ"
echo -n "${VERDE}"
echo "   **************************************************************************"
echo ""
echo -n "\33[1;36m   1)\33[0m Modificar TG para entrar en la sala  - \33[1;33m"





TG=$(awk "NR==5" /home/pi/DMR2YSF/TG-YSFList.txt)

#TG=`expr substr $TG 3 30`
echo "$TG"

echo -n "\33[1;36m   2)\33[0m Modificar número de la sala a la cual entrar - \33[1;33m"
rxf=`grep -n "RXFrequency" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
rxf1=`expr substr $rxf 4 30`
echo "$rxf1"


echo ""
echo "   ${ROJO}0) Salir ${AMARILLO}(si usas ratón puedes salir directamente con la x del terminal)"
echo ""
echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu

case $escoger_menu in
1) echo ""
while true
do
buscar=":"
largo=`expr index $ind $buscar`
echo "Valor actual Indicativo: \33[1;33m${ind#*=}\33[1;37m"
           	          read -p 'Introduce tu indicativo: ' tu_indicativo
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $ind 1 1`
                          else
                          linea=`expr substr $ind 1 1`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			        [sS]* ) echo ""

                          #Convierte indicativo si se introduce en minúsculas a Mayúsculas
                          tu_indicativo=`echo "$tu_indicativo" | tr [:lower:] [:upper:]`

			        tu_indicativo=`echo "$tu_indicativo" | tr -d '[[:space:]]'` # Anula los espacios
                          sed -i "$linea Callsign=$tu_indicativo" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini
sed -i "40c $tu_indicativo" /home/pi/info_panel_control.ini #escribe solo el indicativo
                        #iNDICATIVO PLUS
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMPLUS.ini
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
                        #iNDICATIVO BM
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMBM.ini
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMBM.ini_copia
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
                        #iNDICATIVO RADIO
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVM.ini
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVM.ini_copia
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVM.ini_copia2
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVM.ini_copia3
                        

#Indicativo YSF
loc1=`grep -n "^Callsign=" /home/pi/YSFClients/YSFGateway/YSFGateway.ini`
buscar=":"
largo_linea=`expr index $loc1 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $loc1 1 $largo_linea`
letrac=c
numero_linea_letrac=$numero_linea$letrac
sed -i "$numero_linea_letrac Callsign=$tu_indicativo" /home/pi/YSFClients/YSFGateway/YSFGateway.ini
                        
                        #iNDICATIVO YSF2DMR
                        sed -i "13c Callsign=$tu_indicativo" /home/pi/YSF2DMR/YSF2DMR.ini
                        sed -i "13c Callsign=$tu_indicativo" /home/pi/YSF2DMR/YSF2DMR.ini_copia_01
                        sed -i "13c Callsign=$tu_indicativo" /home/pi/YSF2DMR/YSF2DMR.ini_copia_02
                        sed -i "13c Callsign=$tu_indicativo" /home/pi/YSF2DMR/YSF2DMR.ini_copia_03
                        sed -i "13c Callsign=$tu_indicativo" /home/pi/YSF2DMR/YSF2DMR.ini_copia_04

                        #MMDVMDMR2YSF.ini
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMDMR2YSF.ini

                        #MMDVMDMR2NXDN.ini
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMDMR2NXDN.ini


                        #MMDVMNXDN.ini
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMNXDN.ini

                        #NXDNGateway.ini
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/NXDNClients/NXDNGateway/NXDNGateway.ini

                        #DMR2YSF.ini
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/DMR2YSF/DMR2YSF.ini

                        #iNDICATIVO SOLODSTAR
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMDSTAR.ini
                        #iNDICATIVO SOLOFUSION
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMFUSION.ini
                        
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
2) echo ""
while true
do
buscar=":"
largo=`expr index $rxf $buscar`
echo "Valor actual del RXFrequency: \33[1;33m${rxf#*=}\33[1;37m"

           	          read -p 'Introduce RXFrequency:        ' frecuenciarx
                          
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""

            sed -i "$linea RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini
            #DMR+
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #BM
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #Radio
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVM.ini_copia3
            

#RXFrequency YSF
loc1=`grep -n "^RXFrequency=" /home/pi/YSFClients/YSFGateway/YSFGateway.ini`
buscar=":"
largo_linea=`expr index $loc1 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $loc1 1 $largo_linea`
letrac=c
numero_linea_letrac=$numero_linea$letrac
sed -i "$numero_linea_letrac RXFrequency=$frecuenciarx" /home/pi/YSFClients/YSFGateway/YSFGateway.ini
            
            #YSF2DMR
            sed -i "2c RXFrequency=$frecuenciarx" /home/pi/YSF2DMR/YSF2DMR.ini
            sed -i "2c RXFrequency=$frecuenciarx" /home/pi/YSF2DMR/YSF2DMR.ini_copia_01            
            sed -i "2c RXFrequency=$frecuenciarx" /home/pi/YSF2DMR/YSF2DMR.ini_copia_02
            sed -i "2c RXFrequency=$frecuenciarx" /home/pi/YSF2DMR/YSF2DMR.ini_copia_03
            sed -i "2c RXFrequency=$frecuenciarx" /home/pi/YSF2DMR/YSF2DMR.ini_copia_04
             #MMDVMDMR2YSF.ini
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMDMR2YSF.ini

            #MMDVMDMR2NXDN.ini
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMDMR2NXDN.ini

            #MMDVMNXDN.ini
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMNXDN.ini

            #NXDNGateway.ini
            sed -i "11c RXFrequency=$frecuenciarx" /home/pi/NXDNClients/NXDNGateway/NXDNGateway.ini

            #SOLODSTAR
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #SOLO FUSION
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMFUSION.ini
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

