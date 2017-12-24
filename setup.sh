#! /bin/bash
# update
apt-get update&&apt-get dist-upgrade -y;
# add missing config files
touch /home/chex/.bash_aliases;
# prep /opt
mkdir /opt/pycharm /opt/phpstorm /opt/idea-IU /opt/android-studio /opt/sublime_text /opt/postman /opt/tor-browser /opt/datagrip /opt/matlab -p;
# external scripts
bash ./provision.sh>install.log;
bash ./create-certificate.sh default >>install.log;
bash ./serve-laravel.sh default /home/chex/html 80 433 7.1 >>install.log;
# setup npm
mkdir /home/chex/.npm-global;
npm config set prefix '/home/chex/.npm-global';
printf "\nexport PATH=/home/chex/.npm-global/bin:$PATH;\n">>/home/chex/.profile;
source /home/chex/.profile;
# setup oh-my-zsh
sed -i 's/robbyrussell/geoffgarside/' /home/chex/.zshrc;
chsh -s /bin/zsh chex;
