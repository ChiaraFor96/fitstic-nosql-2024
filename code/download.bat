cd mongodb\data
IF EXIST "games.bson" (
  echo games.bson exists
) ELSE (
  curl --tlsv1.2 -L -o games.bson http://big.csr.unibo.it/projects/nosql-datasets/games.bson
)

IF EXIST "restaurants.bson" (
  echo restaurants.bson exists
) ELSE (
  curl --tlsv1.2 -L -o restaurants.bson http://big.csr.unibo.it/projects/nosql-datasets/restaurants.bson
)

IF EXIST "yelp-business.bson" (
  echo yelp-business.bson exists
) ELSE (
  curl --tlsv1.2 -L -o yelp-business.bson http://big.csr.unibo.it/projects/nosql-datasets/yelp-business.bson
)

cd ..\..\mysql\data
IF EXIST "foodmart.sql" (
  echo foodmart.sql exists
) ELSE (
  curl --tlsv1.2 -L -o foodmart.sql http://big.csr.unibo.it/projects/nosql-datasets/foodmart.sql
)
cd ..\..
