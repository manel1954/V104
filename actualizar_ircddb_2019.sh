#!/bin/bash

						  read -p 'Quieres actualizar Ircddbgateway a la última versión ? S/N ' actualizar             	                           
                          case $actualizar in
			              [sS]* ) echo ""
						  echo "Estas actualizando"
						  break;;
			              [nN]* ) echo ""
						  echo " No actualiza"
						  read a
			              break;;
						  esac
						  echo "No se te ocurra dar al enter"
						  read a


sudo mv /usr/local/bin/ircddbgateway /usr/local/bin/ircddbgateway_2016
sudo mv /usr/local/bin/ircddbgatewayconfig /usr/local/bin/ircddbgatewayconfig_2016
sudo mv /usr/local/bin/remotecontrol /usr/local/bin/remotecontrol_2016

sudo cp /home/pi/V104/ircddbgateway /usr/bin/ircddbgateway
sudo cp /home/pi/V104/ircddbgatewayconfig /usr/bin/ircddbgatewayconfig
sudo cp /home/pi/V104/remotecontrol /usr/bin/remotecontrol

sudo rm -R /usr/share/opendv
sudo mkdir /usr/share/opendv
sudo cp /usr/local/share/opendv/*.ambe /usr/share/opendv/
sudo cp /usr/share/ircddbgateway/*.* /usr/share/opendv/


sudo rm -R /var/log/opendv
sudo mkdir /var/log/opendv
