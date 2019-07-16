#!/bin/bash 



curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

systemctl restart docker 
systemctl daemon-reload
systemctl enable docker

docker run --rm -p 10000:8888 -e JUPYTER_ENABLE_LAB=yes -v ~:/home/jovyan/work jupyter/minimal-notebook:latest
