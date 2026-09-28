#!/bin/sh
set -e

echo "Running database migrations..."
/nakama/nakama migrate up --database.address "$DATABASE_URL"

echo "Starting Nakama server..."
exec /nakama/nakama --name nakama1 --database.address "$DATABASE_URL" --socket.server_key defaultkey
