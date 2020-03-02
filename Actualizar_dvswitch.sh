#!/bin/bash
#
ultima=6.0.2
actualizacion=$(awk "NR==2" /var/www/html/comprueba_actualizacion.php)
if [ $actualizacion = $ultima ];
then
sudo sed -i "3c Ya tienes la última V- $ultima" /var/www/html/comprueba_actualizacion.php
echo "no hay actualizaciones"
else

#sed -i '201c <li><a href="##">V<?php echo $actualizacion;?></a></li>' /var/www/html/panel_configuracion.php

#sudo cp /var/www/html/Actualizar_DVSWITCH_LITE/panel_configuracion.php /var/www/html


#dmrplus_21465.sh

sudo sed -i "2c $ultima" /var/www/html/comprueba_actualizacion.php

sudo sed -i "3c Actualizando a la V-$ultima" /var/www/html/comprueba_actualizacion.php

fi
