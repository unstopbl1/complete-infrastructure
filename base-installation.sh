#!bin/bash

# Скрипт для подготовки инфраструктуры к работе- устанавливается ansible, docker, curl, pip, mc

apt update

apt install ansible -y # устанавливаем ansible

apt install pip -y # устанавливаем pip

apt install mc -y # устанавливаем Midnight commander

apt install docker docker.io -y # устанавливаем docker

systemctl enable docker # разрешаем автозапуск докера

systemctl start docker # запускаем докер

apt install curl -y # устанавливаем curl

echo "Введите версию Docker Compose (посмотреть можно на странице github.com/docker/compose/releases/latest): " # запрашиваем версию docker compose для заполнения переменной

read COMVER

curl -L "https://github.com/docker/compose/releases/download/v$COMVER/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose # устанавливаем нужную версию docker compose 

chmod +x /usr/bin/docker-compose # даем права на выполнение docker compose

