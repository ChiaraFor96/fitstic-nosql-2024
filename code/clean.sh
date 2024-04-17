#!/bin/bash
set -e
cd mongodb/data
rm games.bson
rm restaurants.bson
rm yelp-business.bson

cd ../../mysql/data
rm foodmart.sql

cd ../..