# https-nginx

1. openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx.key -out nginx.crt
2. docker rm -f nginx
3. docker build --rm -f "Dockerfile" -t yoohahn/nginx-https .
4. docker run --name nginx -p 443:443 yoohahn/nginx-https
