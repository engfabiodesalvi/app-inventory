#!/bin/bash
#cache-test

docker exec -it inventory_app_php php artisan tinker --execute="cache()->store('redis')->put('script_cache_test', 'ok', 600); dump(cache()->store('redis')->get('script_cache_test'));"