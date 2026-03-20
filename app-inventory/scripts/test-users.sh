#!/bin/bash

echo "=============================="
echo "MySQL - Describe users ==="
echo "=============================="
docker exec -it inventory_app_db mysql -u laravel -psecret -e "USE inventory; DESCRIBE users;"

echo "=============================="
echo "MySQL - Total users"
echo "=============================="
docker exec -it inventory_app_db mysql -u laravel -psecret -e "USE inventory; SELECT COUNT(*) AS total_users FROM users;"

echo
echo "=============================="
echo "MySQL - User list"
echo "=============================="
docker exec -it inventory_app_db mysql -u laravel -psecret -e "USE inventory; SELECT id, name, email, role, created_at FROM users;"

echo
echo "=============================="
echo "Laravel Tinker - Total users"
echo "=============================="
docker exec -it inventory_app_php php artisan tinker --execute="dump(\App\Models\User::count());"

echo
echo "=============================="
echo "Laravel Tinker - User list"
echo "=============================="
docker exec -it inventory_app_php php artisan tinker --execute="dump(\App\Models\User::select('id','name','email','role','created_at')->get()->toArray());"