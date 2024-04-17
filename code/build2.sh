#!/bin/bash
set -e
if test -f "games.bson"; then
    echo ".env already exists"
else
    cp .env.example .env
fi
sudo docker-compose build
sudo npm install