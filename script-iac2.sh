#!/bin/bash

echo "Atualizando servidor"
apt update
apt upgrade -y
apt install apache2 -y
apt install unzip -y
echo "Fim da instalação"

echo "Baixando a aplicação e copiando arquivos da aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
