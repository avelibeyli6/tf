#!/usr/bin/env bash

yum update
yum install docker -y
usermod -aG docker ec2-user
systemctl enable docker
systemctl start docker

yum install git -y


mkdir -p /src/my-app

cd /src/my-app

git clone https://github.com/avelibeyli6/tf.git

cd tf

docker build -t app:latest --build-arg HOSTNAME=$(hostname) .
docker run -di --name my-app -p 80:80 app:latest
