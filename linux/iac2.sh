#!/bin/bash

echo "Atualizando fontes e pacotes do linux..."
apt-get update 
apt-get upgrade -y

echo "Baixando e instalando o apache e o unzip..."
apt-get install apache2 unzip -y

echo "Baixando e instalando a aplicação web..."
cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/
