FROM nginx:latest

EXPOSE 443
EXPOSE 80
COPY default.conf /etc/nginx/conf.d/
COPY nginx.crt /etc/ssl/
COPY nginx.key /etc/ssl
COPY ./www/ /usr/share/nginx/html
