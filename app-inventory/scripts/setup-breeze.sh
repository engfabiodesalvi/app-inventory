#!/bin/bash

docker exec -it inventory_app_php composer require laravel/breeze --dev
docker exec -it inventory_app_php php artisan breeze:install
docker exec -it inventory_app_php php artisan migrate