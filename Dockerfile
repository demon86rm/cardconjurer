# syntax = docker/dockerfile:1.2
FROM nginx:1.29.4-alpine as prod

EXPOSE 4242
COPY . /usr/share/nginx/html/
COPY app.conf /etc/nginx/nginx.conf

