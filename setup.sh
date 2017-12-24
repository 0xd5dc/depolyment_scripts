#! /bin/bash

# external scripts
bash ./provision.sh>install.log;
bash ./create-certificate.sh default >>install.log;
bash ./serve-laravel.sh default /home/vagrant/html 80 433 7.1 >>install.log;
