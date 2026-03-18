#!/bin/bash
#redis-test

echo "=== Redis PING ==="
docker exec -it inventory_app_redis redis-cli PING

echo
echo "=== Redis DB 0 ==="
docker exec -it inventory_app_redis redis-cli SELECT 0 \; KEYS \*