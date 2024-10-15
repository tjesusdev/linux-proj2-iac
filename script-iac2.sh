#!/bin/bash

echo "Atualizando Servidor Web..."

sudo yum update -y
sudo yum upgrade -y
sudo yum install httpd -y
sudo yum install unzip -y

echo "Baixando e copiando arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

