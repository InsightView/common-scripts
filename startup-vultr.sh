#!/bin/bash 



curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

docker run --rm -p 10000:8888 -e JUPYTER_ENABLE_LAB=yes -v "$PWD":/home/jovyan/work jupyter/datascience-notebook:9b06df75e445
