# docker-nginx-uwsgi-2sites
Sites and nginx are in different docker networks

#How to make it work

docker-compose -f nginx/docker-compose.yml build
docker-compose -f app1/docker-compose.yml build
docker-compose -f app2/docker-compose.yml build
docker-compose -f nginx/docker-compose.yml up -d
docker-compose -f app1/docker-compose.yml up -d
docker-compose -f app2/docker-compose.yml up -d

docker network create mynw  
docker network connect mynw nginx
docker network connect mynw app1
docker network connect mynw app2
...
