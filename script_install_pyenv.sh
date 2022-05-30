#!/bin/bash
# Copyright (c) 2021 Oracle and/or its affiliates.

cd /home/opc/redbull_project

# Create an environment for Redbull HOL
/usr/bin/python3 -m venv redbullenv
# Activate the env
source redbullenv/bin/activate

# Upgrade Environment
/home/opc/redbull_project/redbullenv/bin/python -m pip install --upgrade pip

# install jupyterlab
pip3 install jupyterlab
pip3 install runipy


# Libraries to install

pip install pandas
pip install pandarallel
pip install dask
pip install seaborn
pip install matplotlib
pip install plotly

pip install kafka-python==v2.0.0

pip install lxml==4.6.3
pip install selenium
pip install beautifulsoup4

pip install scikit-learn

pip install Flask
pip install sklearn
pip install gunicorn

pip install pyopenssl

openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /home/opc/redbull_project/lab.crt -keyout /home/opc/redbull_project/lab.key -subj "/C=US/ST=Somewhere/L=Else/O=Hands-On Lab/OU=None/CN=test.local/emailAddress=nowhere@test.local"
# git clone "https://github.com/oracle-devrel/redbull-analytics-hol"

# Install extensiones for jupyterlab
pip install jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
jupyter nbextension enable execute_time/ExecuteTime
