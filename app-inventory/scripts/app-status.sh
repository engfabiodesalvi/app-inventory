#!/bin/bash
#laravel-status

echo "=== PHP version ==="
docker exec -it inventory_app_php php -v

echo
echo "=== Composer version ==="
docker exec -it inventory_app_php composer -V

echo
echo "=== Laravel version ==="
docker exec -it inventory_app_php php artisan --version

echo
echo "=== Migration status ==="
docker exec -it inventory_app_php php artisan migrate:status