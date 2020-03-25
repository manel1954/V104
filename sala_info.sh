#!/bin/bash
read -p 'Introduce número de sala: ' NUMERO_SALA
sala=`grep "$NUMERO_SALA" /home/pi/YSFClients/YSFGateway/YSFHosts.txt`
#sed 's/ /_/g' hola.txt
#sed -i "1c $sala" /home/pi/hola.txt
sed 's/ /_/g' /home/pi/.local/sala.txt
sed -i "1c $sala" /home/pi/.local/sala.txt





