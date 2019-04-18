# https-nginx

1) openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx.key -out nginx.crt

docker rm -f nginx
docker build --rm -f "Dockerfile" -t yoohahn/nginx-https .
docker run --name nginx -p 443:443 yoohahn/nginx-https
