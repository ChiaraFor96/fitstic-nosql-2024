#!/bin/bash
set -e
cd mongodb/data
if [ -f "games.bson" ] && [ $(wc -l < "games.bson") -gt 100 ]; then
    echo "games.bson exists"
else
    curl -L -o games.bson http://big.csr.unibo.it/projects/nosql-datasets/games.bson
fi
if [ -f "restaurants.bson" ] && [ $(wc -l < "restaurants.bson") -gt 100 ]; then
    echo "restaurants.bson exists"
else
    curl -L -o restaurants.bson http://big.csr.unibo.it/projects/nosql-datasets/restaurants.bson
fi
if [ -f "yelp-business.bson" ] && [ $(wc -l < "yelp-business.bson") -gt 100 ]; then
    echo "yelp-business.bson exists"
else
    curl -L -o yelp-business.bson http://big.csr.unibo.it/projects/nosql-datasets/yelp-business.bson
fi
ls -las
cd ../../mysql/data
if  [ -f "foodmart.sql" ] && [ $(wc -l < "foodmart.sql") -gt 100 ]; then
    echo "foodmart.sql exists"
else
    curl -L -o foodmart.sql http://big.csr.unibo.it/projects/nosql-datasets/foodmart.sql
fi
cd ../../