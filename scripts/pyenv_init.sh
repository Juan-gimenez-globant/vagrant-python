#!/bin/bash

curl -sL https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
cat /vagrant/scripts/bashrc_resource >> ~/.bashrc 
source /vagrant/scripts/bashrc_resource
pyenv install 3.5.4
pyenv global 3.5.4

pip install --upgrade pip
