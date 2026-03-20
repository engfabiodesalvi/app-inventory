#!/bin/bash
#Add User Operador

echo "=== Testing App Add User Operador ==="
docker exec -it inventory_app_php php artisan tinker --execute="
\App\Models\User::updateOrCreate(
    ['email' => 'operador1@teste.com'],
    [
        'name' => 'Teste Operador 1',
        'password' => bcrypt('12345678'),
        'role' => 'operador'
    ]
);"

echo "Script completed!"