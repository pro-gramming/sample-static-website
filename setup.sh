#!/bin/bash

docker pull nginx:latest 
sleep 2
docker run --name some-nginx -v "${PWD}"/mywebsite:/usr/share/nginx/html:ro -p 8080:80 -d nginx:latest 