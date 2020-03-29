#!/bin/bash

mkdir /home/pi/.local/ircddb_2019

cd /home/pi/.local/ircddb_2019

wget http://associacioader.com/descargas/ircddbgateway
wget http://associacioader.com/descargas/ircddbgatewayconfig
wget http://associacioader.com/descargas/remotecontrol

sudo mv /usr/local/bin/ircddbgateway ircddbgateway_2016
sudo mv /usr/local/bin/ircddbgatewayconfig ircddbgatewayconfig_2016
sudo mv /usr/local/bin/remotecontrol remotecontrol_2016

sudo mv /home/pi/.local/ircddb_2019/ircddbgateway /usr/bin/ircddbgateway
sudo mv /home/pi/.local/ircddb_2019/ircddbgatewayconfig /usr/bin/ircddbgatewayconfig
sudo mv /home/pi/.local/ircddb_2019/remotecontrol /usr/bin/remotecontrol

sudo chmod 777 /usr/bin/ircddbgateway
sudo chmod 777 /usr/bin/ircddbgatewayconfig
sudo chmod 777 /usr/bin/remotecontrol

sudo rm -R /usr/share/opendv
sudo mkdir /usr/share/opendv
sudo cp /usr/local/share/opendv/*.* /usr/share/opendv/

sudo rm /var/log/opendv
sudo mkdir /var/log/opendv