#!/bin/sh
set -e
# importing JSON to restaurants collection
mongoimport \
  --username "$MONGO_INITDB_ROOT_USERNAME" \
  --password "$MONGO_INITDB_ROOT_PASSWORD" \
  --authenticationDatabase admin \
  --db restaurants \
  --collection restaurants \
  --file /docker-entrypoint-initdb.d/restaurants.json