#!/bin/sh
set -e

# Export Redis variables if not set
export REDIS_HOST=${REDIS_HOST:-abibliadigital-redis}
export REDIS_PORT=${REDIS_PORT:-6379}
export REDIS_URL=${REDIS_URL:-redis://${REDIS_HOST}:${REDIS_PORT}}

# Start the application
exec npm start
