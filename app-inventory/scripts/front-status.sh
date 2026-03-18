#!/bin/bash
#vite-test

echo "=== Node version ==="
docker exec -it inventory_app_node node -v

echo
echo "=== NPM version ==="
docker exec -it inventory_app_node npm -v

echo
echo "=== Vite process/logs ==="
docker logs inventory_app_node --tail 50