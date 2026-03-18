#!/bin/bash
#check-env

echo "=============================="
echo "Containers"
echo "=============================="
docker compose ps

echo
echo "=============================="
echo "Laravel"
echo "=============================="
docker exec -it inventory_app_php php artisan about

echo
echo "=============================="
echo "MySQL"
echo "=============================="
docker exec -it inventory_app_db mysql -u laravel -psecret -e "USE inventory; SHOW TABLES;"

echo
echo "=============================="
echo "Redis"
echo "=============================="
docker exec -it inventory_app_redis redis-cli PING

echo
echo "=============================="
echo "Laravel Cache Test"
echo "=============================="
docker exec -it inventory_app_php php artisan tinker --execute="cache()->store('redis')->put('env_check', 'ok', 600); dump(cache()->store('redis')->get('env_check'));"

echo
echo "=============================="
echo "Node / Vite"
echo "=============================="
docker exec -it inventory_app_node node -v
docker exec -it inventory_app_node npm -v
docker logs inventory_app_node --tail 20