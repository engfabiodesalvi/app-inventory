#!/bin/bash
#Add User Admin

echo "=== Testing App Add User Admin ==="
docker exec -it inventory_app_php php artisan tinker --execute="
\App\Models\User::updateOrCreate(
    ['email' => 'admin@teste.com'],
    [
        'name' => 'Teste Admin',
        'password' => bcrypt('12345678'),
        'role' => 'admin'
    ]
);"

echo "Script completed!"