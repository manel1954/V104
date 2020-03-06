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
echo "       EDITAR TG Y NÚMERO DE SALA PARA HABLAR POR ESA SALA YSF                  "
echo -n "${ROJO}"
echo "                             $SCRIPTS_version by EA3EIZ"
echo -n "${VERDE}"
echo "   **************************************************************************"
echo ""
echo -n "\33[1;36m   1)\33[0m Modificar TG y sala  - \33[1;33m"
TG=$(awk "NR==1" /home/pi/tg_ysf.txt)
SALA=$(awk "NR==1" /home/pi/nombre_salas_ysf.txt)
echo "TG: $TG  SALA: $SALA"

echo -n "\33[1;36m   2)\33[0m Modificar TG y sala  - \33[1;33m"
TG=$(awk "NR==2" /home/pi/tg_ysf.txt)
SALA=$(awk "NR==2" /home/pi/nombre_salas_ysf.txt)
echo "TG: $TG  SALA: $SALA"

echo -n "\33[1;36m   3)\33[0m Modificar TG y sala  - \33[1;33m"
TG=$(awk "NR==2" /home/pi/tg_ysf.txt)
SALA=$(awk "NR==2" /home/pi/nombre_salas_ysf.txt)
echo "TG: $TG  SALA: $SALA"



echo ""
echo "   ${ROJO}0) Salir ${AMARILLO}(si usas ratón puedes salir directamente con la x del terminal)"
echo ""
echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu

case $escoger_menu in
1) echo ""
while true
do
                          echo "Ej. para sala de Ader: TGxx;32027"
           	              read -p 'Introduce TG a utilizar para hablar por la sala: ' tg
                          read -p 'Introduce nombre de la sala: ' NOMBRE_SALA
                          actualizar=S 
                          case $actualizar in
			                    [sS]* ) echo ""
                          sala=`grep "$sala" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`echo "$sala" | tr -d '[[:space:]]'`
                          numero_sala=`expr substr $sala 1 5`
echo "sala: $sala"
echo "numero de sala: $numero_sala"


                          read a
                          sudo sed -i "5c $numero_sala" /home/pi/DMR2YSF/TG-YSFList.txt
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
                          echo "Ej. para sala de Ader: TGxx;32027"
                          read -p 'Introduce TG a utilizar para hablar por la sala: ' tg
                          read -p 'Introduce nombre de la sala: ' NOMBRE_SALA
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sala=`grep "$sala" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`echo "$sala" | tr -d '[[:space:]]'`
                          numero_sala=`expr substr $sala 1 5`
                          sudo sed -i "6c $numero_sala" /home/pi/DMR2YSF/TG-YSFList.txt
                          sudo sed -i "2c $tg" /home/pi/tg_ysf.txt
                          sudo sed -i "2c $NOMBRE_SALA" /home/pi/nombre_salas_ysf.txt
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

