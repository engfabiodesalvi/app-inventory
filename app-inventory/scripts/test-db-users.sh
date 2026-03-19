#!/bin/bash
#mysql-test

echo "=== Testing MySQL connection ==="
docker exec -it inventory_app_db mysql -u laravel -psecret -e "USE inventory; DESCRIBE users;"