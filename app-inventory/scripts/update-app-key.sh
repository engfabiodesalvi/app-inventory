#!/bin/bash

echo "=============================="
echo "Updating Laravel APP_KEY"
echo "=============================="

if [ ! -f .env ]; then
  echo "ERROR: .env file not found."
  exit 1
fi

echo
echo "[1/5] Creating .env backup..."
cp .env .env.backup
echo "OK: backup created at .env.backup"

echo
echo "[2/5] Generating new APP_KEY..."
docker exec -i inventory_app_php php artisan key:generate

echo
echo "[3/5] Clearing Laravel caches..."
docker exec -i inventory_app_php php artisan optimize:clear

echo
echo "[4/5] Verifying APP_KEY in .env..."
grep '^APP_KEY=' .env

echo
echo "[5/5] Checking .env protection..."
if grep -qxF ".env" .gitignore 2>/dev/null; then
  echo "OK: .env is listed in .gitignore."
else
  echo "WARNING: .env is not listed in .gitignore."
fi

if git ls-files --error-unmatch .env >/dev/null 2>&1; then
  echo "WARNING: .env is being tracked by git."
  echo "Run: git rm --cached .env"
else
  echo "OK: .env is not tracked by git."
fi

echo
echo "APP_KEY update finished."
echo "Note: existing sessions and encrypted data may be invalidated."