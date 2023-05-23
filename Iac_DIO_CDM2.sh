#!/bin/bash

echo " Atualizando o Servidor..."
apt-get update
apt-get upgrade -y

echo " Instalando Apacahe2..."
apt-get install apache2 -y

echo " Instalando unzip..."
apt-get install unzip -y

echo "Baixando a aplicação no /tmp..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando a os dados da aplicação..."
unzip main.zip

echo "Copiando os arquivos da aplicação para o diretório padrão do Apache..."
cd linux-site-dio-main
cp -R * /var/www/html/
