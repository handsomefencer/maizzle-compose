#!/bin/bash

docker compose down
docker image rm $(docker images handsomefencer/maizzle*)
docker volume rm $(docker volume ls --filter name=maizzle) 
docker system prune -f
docker images
docker volume ls
docker compose run --rm maizzle

