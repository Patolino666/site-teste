#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y 
apt-get install apache2 -y 
apt-get install unzip -y 

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/patolino666/site-teste/archive/refs/heads/main.zip 
unzip main.zap
cd site-teste
cp -R * /var/www/html 
