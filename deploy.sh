#!/bin/bash

docker stop trend-app || true
docker rm trend-app || true

docker run -d \
--name trend-app \
-p 80:80 \
trend-app
