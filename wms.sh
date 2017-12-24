#! /bin/bash

git clone git@bitbucket.org:summermick/wms_laravel_angular_material.git wms;
cd wms;
cp .env.example .env;
yarn install;
bower install;
composer install;
php artisan migrate;
php artisan key:generate;
gulp;
ln -s /home/chex/wms/public /home/chex/html;
sudo systemctl restart nginx;
echo "WMS is up!\n";