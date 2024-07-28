#!/bin/bash

sudo su
apt update -
apt install -y java-1.8.0-openjdk

# Criar um diretório para o programa
mkdir -p /opt/myapp

apt install -y docker.io
systemctl start docker
systemctl enable docker

docker pull brunaofl/posgrad-api:latest
docker run -d --name posgrad-api -p 80:8080 brunaofl/posgrad-api:latest
# docker run -p 80:8080 brunaofl/posgrad-api