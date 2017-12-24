#! /bin/bash

# change update sources
sudo cp  /etc/apt/sources.list  /etc/apt/sources.list.bak;
sudo sed -i 's/http:\/\/us.archive.ubuntu.com/http:\/\/mirror.math.ucdavis.edu/g' /etc/apt/sources.list;
sudo apt-get update&&sudo apt-get dist-upgrade -y;
sudo apt-get install -y curl zip emacs zsh;
