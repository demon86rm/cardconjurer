# syntax = docker/dockerfile:1.2
#FROM nginx:1.29.4-alpine as prod
FROM nginx:alpine as prod

EXPOSE 4242
COPY html /usr/share/nginx/html
COPY app.conf /etc/nginx/nginx.conf

