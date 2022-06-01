FROM nginx:latest

USER root

RUN mkdir -p /service/conf && \
    mkdir /service/log && \
    mkdir /service/keys 

COPY services/ /service/conf/

RUN rm /etc/nginx/conf.d/default.conf && \
    mv /service/conf/nginx.conf /etc/nginx/nginx.conf 

WORKDIR /service/conf/

RUN chmod +x /service/conf/init.sh

ENTRYPOINT [ "./init.sh" ]   