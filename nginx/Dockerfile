# your code goes here ...
FROM nginx:latest

USER root

RUN rm /etc/nginx/conf.d/default.conf && \
    mv services/nginx.conf /etc/nginx/nginx.conf 

RUN nginx -c /etc/nginx/nginx.conf -g 'daemon off;'