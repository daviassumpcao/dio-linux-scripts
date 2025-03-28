#!/bin/bash

echo "Atualizando ambiente..."
apt-get update -i
apt-get-upgrade -y
apt-get install apache2 -y
apt-get install mysql-server-8.0 -y
apt-get install unzip -y

echo "Baixando atualizando os arquivos da aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Done!"
