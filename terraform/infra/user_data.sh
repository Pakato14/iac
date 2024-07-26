#!/bin/bash

sudo su
apt update -y
apt install -y docker
service docker start
usermod -a -G docker ec2-user

docker run -p 80:8080 nome_usuario_bruna