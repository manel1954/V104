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
CIAN="\033[1;36m"
GRIS="\033[0m"

echo "${VERDE}"
echo "   **************************************************************************"
echo -n "${CIAN}"
echo "                              EDITOR TG - SALA YSF                       "
echo -n "${ROJO}"
echo "                                 $SCRIPTS_version by EA3EIZ"
echo -n "${VERDE}"
echo "   **************************************************************************"
echo ""
echo -n "\33[1;36m   1)\33[0m Modificar TG y sala  - \33[1;33m"
TG1=$(awk "NR==1" /home/pi/.local/tg_ysf.txt)
SALA1=$(awk "NR==1" /home/pi/.local/nombre_salas_ysf.txt)
echo "${CIAN} TG: ${AMARILLO} $TG1  ${CIAN} SALA: ${AMARILLO} $SALA1"

echo -n "\33[1;36m   2)\33[0m Modificar TG y sala  - \33[1;33m"
TG2=$(awk "NR==2" /home/pi/.local/tg_ysf.txt)
SALA2=$(awk "NR==2" /home/pi/.local/nombre_salas_ysf.txt)
echo "${CIAN} TG: ${AMARILLO} $TG2  ${CIAN} SALA: ${AMARILLO} $SALA2"

echo -n "\33[1;36m   3)\33[0m Modificar TG y sala  - \33[1;33m"
TG3=$(awk "NR==3" /home/pi/.local/tg_ysf.txt)
SALA3=$(awk "NR==3" /home/pi/.local/nombre_salas_ysf.txt)
echo "${CIAN} TG: ${AMARILLO} $TG3  ${CIAN} SALA: ${AMARILLO} $SALA3"

echo -n "\33[1;36m   4)\33[0m Modificar TG y sala  - \33[1;33m"
TG4=$(awk "NR==4" /home/pi/.local/tg_ysf.txt)
SALA4=$(awk "NR==4" /home/pi/.local/nombre_salas_ysf.txt)
echo "${CIAN} TG: ${AMARILLO} $TG4  ${CIAN} SALA: ${AMARILLO} $SALA4"

echo -n "\33[1;36m   5)\33[0m Modificar TG y sala  - \33[1;33m"
TG5=$(awk "NR==5" /home/pi/.local/tg_ysf.txt)
SALA5=$(awk "NR==5" /home/pi/.local/nombre_salas_ysf.txt)
echo "${CIAN} TG: ${AMARILLO} $TG5  ${CIAN} SALA: ${AMARILLO} $SALA5"

echo -n "\33[1;36m   6)\33[0m Modificar TG y sala  - \33[1;33m"
TG6=$(awk "NR==6" /home/pi/.local/tg_ysf.txt)
SALA6=$(awk "NR==6" /home/pi/.local/nombre_salas_ysf.txt)
echo "${CIAN} TG: ${AMARILLO} $TG6  ${CIAN} SALA: ${AMARILLO} $SALA6"

echo -n "\33[1;36m   7)\33[0m Modificar TG y sala  - \33[1;33m"
TG7=$(awk "NR==7" /home/pi/.local/tg_ysf.txt)
SALA7=$(awk "NR==7" /home/pi/.local/nombre_salas_ysf.txt)
echo "${CIAN} TG: ${AMARILLO} $TG7  ${CIAN} SALA: ${AMARILLO} $SALA7"

echo -n "\33[1;36m   8)\33[0m Modificar TG y sala  - \33[1;33m"
TG8=$(awk "NR==8" /home/pi/.local/tg_ysf.txt)
SALA8=$(awk "NR==8" /home/pi/.local/nombre_salas_ysf.txt)
echo "${CIAN} TG: ${AMARILLO} $TG8  ${CIAN} SALA: ${AMARILLO} $SALA8"

echo -n "\33[1;36m   9)\33[0m Modificar TG y sala  - \33[1;33m"
TG9=$(awk "NR==9" /home/pi/.local/tg_ysf.txt)
SALA9=$(awk "NR==9" /home/pi/.local/nombre_salas_ysf.txt)
echo "${CIAN} TG: ${AMARILLO} $TG9  ${CIAN} SALA: ${AMARILLO} $SALA9"

echo -n "\33[1;36m  10)\33[0m Modificar TG y sala  - \33[1;33m"
TG10=$(awk "NR==10" /home/pi/.local/tg_ysf.txt)
SALA10=$(awk "NR==10" /home/pi/.local/nombre_salas_ysf.txt)
echo "${CIAN} TG: ${AMARILLO} $TG10  ${CIAN} SALA: ${AMARILLO} $SALA10"

echo -n "\33[1;36m  11)\33[0m Modificar TG y sala  - \33[1;33m"
TG11=$(awk "NR==11" /home/pi/.local/tg_ysf.txt)
SALA11=$(awk "NR==11" /home/pi/.local/nombre_salas_ysf.txt)
echo "${CIAN} TG: ${AMARILLO} $TG11  ${CIAN} SALA: ${AMARILLO} $SALA11"

echo -n "\33[1;36m  12)\33[0m Modificar TG y sala  - \33[1;33m"
TG12=$(awk "NR==12" /home/pi/.local/tg_ysf.txt)
SALA12=$(awk "NR==12" /home/pi/.local/nombre_salas_ysf.txt)
echo "${CIAN} TG: ${AMARILLO} $TG12  ${CIAN} SALA: ${AMARILLO} $SALA12"

echo -n "\33[1;36m  13)\33[0m Modificar TG y sala  - \33[1;33m"
TG13=$(awk "NR==13" /home/pi/.local/tg_ysf.txt)
SALA13=$(awk "NR==13" /home/pi/.local/nombre_salas_ysf.txt)
echo "${CIAN} TG: ${AMARILLO} $TG13  ${CIAN} SALA: ${AMARILLO} $SALA13"

echo -n "\33[1;36m  14)\33[0m Modificar TG y sala  - \33[1;33m"
TG14=$(awk "NR==14" /home/pi/.local/tg_ysf.txt)
SALA14=$(awk "NR==14" /home/pi/.local/nombre_salas_ysf.txt)
echo "${CIAN} TG: ${AMARILLO} $TG14  ${CIAN} SALA: ${AMARILLO} $SALA14"

echo -n "\33[1;36m  15)\33[0m Modificar TG y sala  - \33[1;33m"
TG15=$(awk "NR==15" /home/pi/.local/tg_ysf.txt)
SALA15=$(awk "NR==15" /home/pi/.local/nombre_salas_ysf.txt)
echo "${CIAN} TG: ${AMARILLO} $TG15  ${CIAN} SALA: ${AMARILLO} $SALA15"

echo ""
echo "${BLANCO}"
echo "  ${CIAN}16) ${BLANCO}Abrir listado de salas YSF para ver su nombre"
echo "  ${CIAN}17) ${BLANCO}Cerrar listado de salas YSF"
echo ""
echo "   ${ROJO}0) Salir "
echo ""
echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu

case $escoger_menu in
1) echo ""
while true
do
                          clear
                          echo ""
                          echo "${CIAN}"
                          echo -n "Introduce el TG DMR que vas a utilizar para hablar por la sala YSF: ${AMARILLO}"
                          read tg

                          echo ""
                          echo "${CIAN}"
                          echo -n "Introduce número de sala YSF: ${AMARILLO}" 
                          read NUMERO_SALA
                          
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          

sala=`grep "$NUMERO_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
sed 's/ /_/g' /home/pi/.local/sala.txt
sala1=`echo "$sala" | tr -d '[[:space:]]'`
clear
numero_sala=`expr substr $sala1 1 5`
clear
if [ $NUMERO_SALA = $numero_sala ]
                          then                        
                        echo "${BLANCO}"
                        echo "   REVISA SI SON CORRECTOS LOS DATOS INTRODUCIDOS"
                        echo "   =============================================="

                        echo "${CIAN}"
                        read -p '   Quieres grabar los datos? S/N ' seguir   
                        elif [ "$seguir" = 'S' -o "$seguir" = 's' ];then 

sed -i "1c $sala" /home/pi/.local/sala.txt
nombre_sala=$(awk -F';' '{print $2}' /home/pi/.local/sala.txt)
                                                                                                                   
                          listsala=$tg";"$numero_sala
                          sudo sed -i "5c $listsala" /home/pi/DMR2YSF/TG-YSFList.txt
                          sudo sed -i "1c $tg" /home/pi/.local/tg_ysf.txt
                          sudo sed -i "1c $nombre_sala" /home/pi/.local/nombre_salas_ysf.txt

                          else
                          clear

echo "${ROJO}"
echo "\v\v\v\v\v"
echo "   *************************************************************************"
echo "   *************************************************************************"
echo "   **************************  ${BLANCO}LA SALA NO EXISTE ${ROJO}***************************"
echo "   *************************************************************************"
echo "   *************************************************************************"
sleep 1
clear
echo "${AMARILLO}"
echo "\v\v\v\v\v"
echo "   *************************************************************************"
echo "   *************************************************************************"
echo "   **************************  ${BLANCO}LA SALA NO EXISTE ${AMARILLO}***************************"
echo "   *************************************************************************"
echo "   *************************************************************************"
sleep 1
clear
echo "${ROJO}"
echo "\v\v\v\v\v"
echo "   *************************************************************************"
echo "   *************************************************************************"
echo "   **************************  ${BLANCO}LA SALA NO EXISTE ${ROJO}***************************"
echo "   *************************************************************************"
echo "   *************************************************************************"
sleep 2

                          fi
                    
                          break;;
                          [nN]* ) echo ""
                          break;;
			 
esac
done;;
2) echo ""
while true
do
                          clear
                          echo "${CIAN}"
                          read -p 'Introduce TG que vas a utilizar para hablar por la sala: ' tg
                          clear
                          echo "${BLANCO}"
                          echo "*************************************************************"
                          echo "   PUEDES MODIFICAR INTRODUCIENDO NOMBRE O NÚMERO DE SALA"
                          echo "*************************************************************"
                          
                          echo "${AMARILLO}"
                          read -p 'Quieres modificar por el número de sala S/N ? ' nuno                     
                          case $nuno in
                          [sS]* ) echo ""
                          
                          clear
                          echo "${VERDE}"
                          echo "*************************************************************"
                          echo "                UTILIZANDO NÚMERO DE SALA"
                          echo "*************************************************************"

                          echo "${CIAN}"
                          read -p 'Introduce número de sala: ' NUMERO_SALA
                          sala=`grep "$NUMERO_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`echo "$sala" | tr -d '[[:space:]]'`
                          numero_sala=`expr substr $sala 1 5`
                          listsala=$tg";"$numero_sala
                          sudo sed -i "6c $listsala" /home/pi/DMR2YSF/TG-YSFList.txt
                          sudo sed -i "2c $tg" /home/pi/.local/tg_ysf.txt
                          sudo sed -i "2c $NUMERO_SALA" /home/pi/.local/nombre_salas_ysf.txt
                          break;;

                          [nN]* ) echo ""

                          clear
                          echo "${AMARILLO}"
                          echo "*************************************************************"
                          echo "                UTILIZANDO NOMBRE DE SALA"
                          echo "*************************************************************"
                          echo "${CIAN}"
                          read -p 'Introduce nombre de sala: ' NOMBRE_SALA
                          sala=`grep "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`echo "$sala" | tr -d '[[:space:]]'`
                          nombre_sala=`expr substr $sala 1 5`
                          listsala=$tg";"$nombre_sala
                          sudo sed -i "6c $listsala" /home/pi/DMR2YSF/TG-YSFList.txt
                          sudo sed -i "2c $tg" /home/pi/.local/tg_ysf.txt
                          sudo sed -i "2c $NOMBRE_SALA" /home/pi/.local/nombre_salas_ysf.txt
                          break;;
       
esac
done;;
3) echo ""
while true
do
                          read -p 'Introduce el TG que vas a utilizar para hablar por la sala: ' tg
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
                          sudo sed -i "3c $tg" /home/pi/.local/tg_ysf.txt
                          sudo sed -i "3c $NOMBRE_SALA" /home/pi/.local/nombre_salas_ysf.txt
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
4) echo ""
while true
do
                          read -p 'Introduce el TG que vas a utilizar para hablar por la sala: ' tg
                          read -p 'Introduce nombre de la sala: ' NOMBRE_SALA
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sala1=`grep -n "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`grep "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`echo "$sala" | tr -d '[[:space:]]'`
                          nombre_sala=`expr substr $sala 1 5`
                          listsala=$tg";"$nombre_sala
                          sudo sed -i "8c $listsala" /home/pi/DMR2YSF/TG-YSFList.txt
                          sudo sed -i "4c $tg" /home/pi/.local/tg_ysf.txt
                          sudo sed -i "4c $NOMBRE_SALA" /home/pi/.local/nombre_salas_ysf.txt
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
5) echo ""
while true
do
                          read -p 'Introduce el TG que vas a utilizar para hablar por la sala: ' tg
                          read -p 'Introduce nombre de la sala: ' NOMBRE_SALA
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sala1=`grep -n "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`grep "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`echo "$sala" | tr -d '[[:space:]]'`
                          nombre_sala=`expr substr $sala 1 5`
                          listsala=$tg";"$nombre_sala
                          sudo sed -i "9c $listsala" /home/pi/DMR2YSF/TG-YSFList.txt
                          sudo sed -i "5c $tg" /home/pi/.local/tg_ysf.txt
                          sudo sed -i "5c $NOMBRE_SALA" /home/pi/.local/nombre_salas_ysf.txt
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
6) echo ""
while true
do
                          read -p 'Introduce el TG que vas a utilizar para hablar por la sala: ' tg
                          read -p 'Introduce nombre de la sala: ' NOMBRE_SALA
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sala1=`grep -n "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`grep "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`echo "$sala" | tr -d '[[:space:]]'`
                          nombre_sala=`expr substr $sala 1 5`
                          listsala=$tg";"$nombre_sala
                          sudo sed -i "10c $listsala" /home/pi/DMR2YSF/TG-YSFList.txt
                          sudo sed -i "6c $tg" /home/pi/.local/tg_ysf.txt
                          sudo sed -i "6c $NOMBRE_SALA" /home/pi/.local/nombre_salas_ysf.txt
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
7) echo ""
while true
do
                          read -p 'Introduce el TG que vas a utilizar para hablar por la sala: ' tg
                          read -p 'Introduce nombre de la sala: ' NOMBRE_SALA
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sala1=`grep -n "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`grep "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`echo "$sala" | tr -d '[[:space:]]'`
                          nombre_sala=`expr substr $sala 1 5`
                          listsala=$tg";"$nombre_sala
                          sudo sed -i "11c $listsala" /home/pi/DMR2YSF/TG-YSFList.txt
                          sudo sed -i "7c $tg" /home/pi/.local/tg_ysf.txt
                          sudo sed -i "7c $NOMBRE_SALA" /home/pi/.local/nombre_salas_ysf.txt
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
8) echo ""
while true
do
                          read -p 'Introduce el TG que vas a utilizar para hablar por la sala: ' tg
                          read -p 'Introduce nombre de la sala: ' NOMBRE_SALA
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sala1=`grep -n "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`grep "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`echo "$sala" | tr -d '[[:space:]]'`
                          nombre_sala=`expr substr $sala 1 5`
                          listsala=$tg";"$nombre_sala
                          sudo sed -i "12c $listsala" /home/pi/DMR2YSF/TG-YSFList.txt
                          sudo sed -i "8c $tg" /home/pi/.local/tg_ysf.txt
                          sudo sed -i "8c $NOMBRE_SALA" /home/pi/.local/nombre_salas_ysf.txt
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
9) echo ""
while true
do
                          read -p 'Introduce el TG que vas a utilizar para hablar por la sala: ' tg
                          read -p 'Introduce nombre de la sala: ' NOMBRE_SALA
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sala1=`grep -n "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`grep "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`echo "$sala" | tr -d '[[:space:]]'`
                          nombre_sala=`expr substr $sala 1 5`
                          listsala=$tg";"$nombre_sala
                          sudo sed -i "13c $listsala" /home/pi/DMR2YSF/TG-YSFList.txt
                          sudo sed -i "9c $tg" /home/pi/.local/tg_ysf.txt
                          sudo sed -i "9c $NOMBRE_SALA" /home/pi/.local/nombre_salas_ysf.txt
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
10) echo ""
while true
do
                          read -p 'Introduce el TG que vas a utilizar para hablar por la sala: ' tg
                          read -p 'Introduce nombre de la sala: ' NOMBRE_SALA
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sala1=`grep -n "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`grep "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`echo "$sala" | tr -d '[[:space:]]'`
                          nombre_sala=`expr substr $sala 1 5`
                          listsala=$tg";"$nombre_sala
                          sudo sed -i "14c $listsala" /home/pi/DMR2YSF/TG-YSFList.txt
                          sudo sed -i "10c $tg" /home/pi/.local/tg_ysf.txt
                          sudo sed -i "10c $NOMBRE_SALA" /home/pi/.local/nombre_salas_ysf.txt
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;








11) echo ""
while true
do
                          read -p 'Introduce el TG que vas a utilizar para hablar por la sala: ' tg
                          read -p 'Introduce nombre de la sala: ' NOMBRE_SALA
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sala1=`grep -n "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`grep "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`echo "$sala" | tr -d '[[:space:]]'`
                          nombre_sala=`expr substr $sala 1 5`
                          listsala=$tg";"$nombre_sala
                          sudo sed -i "15c $listsala" /home/pi/DMR2YSF/TG-YSFList.txt
                          sudo sed -i "11c $tg" /home/pi/.local/tg_ysf.txt
                          sudo sed -i "11c $NOMBRE_SALA" /home/pi/.local/nombre_salas_ysf.txt
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
12) echo ""
while true
do
                          read -p 'Introduce el TG que vas a utilizar para hablar por la sala: ' tg
                          read -p 'Introduce nombre de la sala: ' NOMBRE_SALA
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sala1=`grep -n "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`grep "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`echo "$sala" | tr -d '[[:space:]]'`
                          nombre_sala=`expr substr $sala 1 5`
                          listsala=$tg";"$nombre_sala
                          sudo sed -i "16c $listsala" /home/pi/DMR2YSF/TG-YSFList.txt
                          sudo sed -i "12c $tg" /home/pi/.local/tg_ysf.txt
                          sudo sed -i "12c $NOMBRE_SALA" /home/pi/.local/nombre_salas_ysf.txt
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
13) echo ""
while true
do
                          read -p 'Introduce el TG que vas a utilizar para hablar por la sala: ' tg
                          read -p 'Introduce nombre de la sala: ' NOMBRE_SALA
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sala1=`grep -n "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`grep "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`echo "$sala" | tr -d '[[:space:]]'`
                          nombre_sala=`expr substr $sala 1 5`
                          listsala=$tg";"$nombre_sala
                          sudo sed -i "17c $listsala" /home/pi/DMR2YSF/TG-YSFList.txt
                          sudo sed -i "13c $tg" /home/pi/.local/tg_ysf.txt
                          sudo sed -i "13c $NOMBRE_SALA" /home/pi/.local/nombre_salas_ysf.txt
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
14) echo ""
while true
do
                          read -p 'Introduce el TG que vas a utilizar para hablar por la sala: ' tg
                          read -p 'Introduce nombre de la sala: ' NOMBRE_SALA
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sala1=`grep -n "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`grep "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`echo "$sala" | tr -d '[[:space:]]'`
                          nombre_sala=`expr substr $sala 1 5`
                          listsala=$tg";"$nombre_sala
                          sudo sed -i "18c $listsala" /home/pi/DMR2YSF/TG-YSFList.txt
                          sudo sed -i "14c $tg" /home/pi/.local/tg_ysf.txt
                          sudo sed -i "14c $NOMBRE_SALA" /home/pi/.local/nombre_salas_ysf.txt
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
15) echo ""
while true
do
                          read -p 'Introduce el TG que vas a utilizar para hablar por la sala: ' tg
                          read -p 'Introduce nombre de la sala: ' NOMBRE_SALA
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sala1=`grep -n "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`grep "$NOMBRE_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
                          sala=`echo "$sala" | tr -d '[[:space:]]'`
                          nombre_sala=`expr substr $sala 1 5`
                          listsala=$tg";"$nombre_sala
                          sudo sed -i "19c $listsala" /home/pi/DMR2YSF/TG-YSFList.txt
                          sudo sed -i "15c $tg" /home/pi/.local/tg_ysf.txt
                          sudo sed -i "15c $NOMBRE_SALA" /home/pi/.local/nombre_salas_ysf.txt
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
16) echo ""
while true
do
                        
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sudo geany /home/pi/YSFClients/YSFGateway/YSFHosts.txt &
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
17) echo ""
while true
do
                        
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sudo killall geany
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

