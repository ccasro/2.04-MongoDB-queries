#!/bin/bash
# importing JSON to restaurants collection
mongoimport --db restaurants --collection restaurants --file /docker-entrypoint-initdb.d/restaurants.json
