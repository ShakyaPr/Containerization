# your code goes here ...
FROM nginx:latest

USER root

RUN mkdir /service

COPY services/ /service/

RUN rm /etc/nginx/conf.d/default.conf && \
    mv service/nginx.conf /etc/nginx/nginx.conf 

#RUN nginx -c /etc/nginx/nginx.conf -g 'daemon off;'
CMD "nginx -c /etc/nginx/nginx.conf -g daemon off;"    