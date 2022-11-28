#!/bin/bash

echo "Updating Server"
apt get update -y
apt get upgrade -y

echo "Installing unzip"
apt-get install unzip -y

echo "Installing apache2"
apt-get install apache2 -y
systemctl restart apache2

echo "Downloading Files"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

