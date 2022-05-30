#!/bin/bash
# Copyright (c) 2021 Oracle and/or its affiliates.

# Activate Redbull Environment
source /home/opc/redbull_project/redbullenv/bin/activate

cd /home/opc/redbull_project/redbull-analytics-hol/beginners/web/

if [ "$1" = "start" ]
then
nohup python3 app.py  > /home/opc/redbull_project/log/app.log 2>&1 &
echo $! > /home/opc/redbull_project/log/app.pid
else
kill $(cat /home/opc/redbull_project/log/app.pid)
fi
