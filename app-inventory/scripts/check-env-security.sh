#!/bin/bash
#check env security

echo "=============================="
echo "Laravel security check"
echo "=============================="

echo
echo "[1/4] Checking if .env exists..."
if [ -f .env ]; then
  echo "OK: .env found."
else
  echo "WARNING: .env not found."
fi

echo
echo "[2/4] Checking if .env is ignored by git..."
if grep -qxF ".env" .gitignore 2>/dev/null; then
  echo "OK: .env is listed in .gitignore."
else
  echo "WARNING: .env is not listed in .gitignore."
fi

echo
echo "[3/4] Checking APP_KEY in .env..."
if [ -f .env ]; then
  APP_KEY_LINE=$(grep '^APP_KEY=' .env)
  if [ -n "$APP_KEY_LINE" ] && [ "$APP_KEY_LINE" != "APP_KEY=" ]; then
    echo "OK: APP_KEY is set in .env."
  else
    echo "WARNING: APP_KEY is empty. Generating a new key..."
    docker exec -i inventory_app_php php artisan key:generate
  fi
else
  echo "WARNING: Cannot check APP_KEY because .env does not exist."
fi

echo
echo "[4/4] Checking tracked files for .env..."
if git ls-files --error-unmatch .env >/dev/null 2>&1; then
  echo "WARNING: .env is being tracked by git."
  echo "Run: git rm --cached .env"
else
  echo "OK: .env is not tracked by git."
fi

echo
echo "Security check finished."