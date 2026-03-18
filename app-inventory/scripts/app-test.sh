#!/bin/bash

echo "=== Laravel route list (first lines) ==="
docker exec -it inventory_app_php php artisan route:list