#!/bin/bash
# Copyright (c) 2021 Oracle and/or its affiliates.

# Activate Redbull Environment
source /home/opc/redbull_project/redbullenv/bin/activate

#cd /home/opc/redbull_project

if [ "$1" = "start" ]
then
nohup jupyter-lab --ip=0.0.0.0 --port=8888 --certfile=/home/opc/redbull_project/lab.crt --keyfile=/home/opc/redbull_project/lab.key > /home/opc/redbull_project/log/jupyterlab.log 2>&1 &
echo $! > /home/opc/redbull_project/log/jupyter.pid
else
kill $(cat /home/opc/redbull_project/log/jupyter.pid)
fi
