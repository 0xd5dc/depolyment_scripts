#! /bin/bash

# setup npm
mkdir /home/$USER/.npm-global;
npm config set prefix '/home/'"$USER"'/.npm-global';
printf "\nexport PATH=/home/$USER/.npm-global/bin:$PATH;\n">>/home/$USER/.profile;
source /home/$USER/.profile;
printf "ready to run:\nsetup.sh with sudo su\n";
# add missing config files
touch /home/$USER/.bash_aliases;
# prep /opt
# mkdir /opt/pycharm /opt/phpstorm /opt/idea-IU /opt/android-studio /opt/postman /opt/tor-browser /opt/datagrip /opt/matlab -p;
# setup oh-my-zsh
sed -i 's/robbyrussell/geoffgarside/' /home/$USER/.zshrc;
chsh -s /bin/zsh $USER;
