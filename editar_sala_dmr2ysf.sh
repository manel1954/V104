#!/bin/bash
clear
while true
do
clear
#lxterminal --geometry=125x30 -e less /home/pi/YSFClients/YSFGateway/YSFHosts.txt &
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)

ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"

echo "${VERDE}"
echo "   **************************************************************************"
echo -n "${CIAN}"
echo "       EDITAR TG Y NÚMERO DE SALA PARA HABLAR POR ESA SALA YSF                  "
echo -n "${ROJO}"
echo "                             $SCRIPTS_version by EA3EIZ"
echo -n "${VERDE}"
echo "   **************************************************************************"
echo ""
echo -n "\33[1;36m   1)\33[0m Modificar TG y sala  - \33[1;33m"
TG1=$(awk "NR==1" /home/pi/tg_ysf.txt)
SALA1=$(awk "NR==1" /home/pi/nombre_salas_ysf.txt)
echo "TG: $TG1  SALA: $SALA1"

echo -n "\33[1;36m   2)\33[0m Modificar TG y sala  - \33[1;33m"
TG2=$(awk "NR==2" /home/pi/tg_ysf.txt)
SALA2=$(awk "NR==2" /home/pi/nombre_salas_ysf.txt)
echo "TG: $TG2  SALA: $SALA2"

echo -n "\33[1;36m   3)\33[0m Modificar TG y sala  - \33[1;33m"
TG3=$(awk "NR==3" /home/pi/tg_ysf.txt)
SALA3=$(awk "NR==3" /home/pi/nombre_salas_ysf.txt)
echo "TG: $TG3  SALA: $SALA3"


echo ""
echo "${BLANCO}"
echo "   11) Abrir listado de salas YSF para ver su nombre"
echo "   12) Cerrar listado de salas YSF"
echo ""
echo "   ${ROJO}0) Salir ${AMARILLO}(si usas ratón puedes salir directamente con la x del terminal)"
echo ""
echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu

case $escoger_menu in
1) echo ""
while true
do
           	              read -p 'Introduce TG a utilizar para hablar por la sala: ' tg
                          read -p 'Introduce nombre de la sala: ' NOMBRE_SALA
                          actualizar=S 
                          case $actualizar in
			                    [sS]* ) echo ""
                          sala1=`grep -n "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`grep "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`echo "$sala" | tr -d '[[:space:]]'`
                          nombre_sala=`expr substr $sala 1 5`
                          listsala=$tg";"$nombre_sala
                          sudo sed -i "5c $listsala" /home/pi/DMR2YSF/TG-YSFList.txt
                          sudo sed -i "1c $tg" /home/pi/tg_ysf.txt
                          sudo sed -i "1c $NOMBRE_SALA" /home/pi/nombre_salas_ysf.txt
			                    break;;
			                    [nN]* ) echo ""
			                    break;;
esac
done;;
2) echo ""
while true
do
                          read -p 'Introduce TG a utilizar para hablar por la sala: ' tg
                          read -p 'Introduce nombre de la sala: ' NOMBRE_SALA
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sala1=`grep -n "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`grep "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`echo "$sala" | tr -d '[[:space:]]'`
                          nombre_sala=`expr substr $sala 1 5`
                          listsala=$tg";"$nombre_sala
                          sudo sed -i "6c $listsala" /home/pi/DMR2YSF/TG-YSFList.txt
                          sudo sed -i "2c $tg" /home/pi/tg_ysf.txt
                          sudo sed -i "2c $NOMBRE_SALA" /home/pi/nombre_salas_ysf.txt
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
3) echo ""
while true
do
                          read -p 'Introduce TG a utilizar para hablar por la sala: ' tg
                          read -p 'Introduce nombre de la sala: ' NOMBRE_SALA
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sala1=`grep -n "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`grep "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`echo "$sala" | tr -d '[[:space:]]'`
                          nombre_sala=`expr substr $sala 1 5`
                          listsala=$tg";"$nombre_sala
                          sudo sed -i "7c $listsala" /home/pi/DMR2YSF/TG-YSFList.txt
                          sudo sed -i "3c $tg" /home/pi/tg_ysf.txt
                          sudo sed -i "3c $NOMBRE_SALA" /home/pi/nombre_salas_ysf.txt
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
11) echo ""
while true
do
                        
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sudo geany /home/pi/DMR2YSF/TG-YSFList.txt
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

