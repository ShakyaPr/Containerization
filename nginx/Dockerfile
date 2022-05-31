FROM nginx:latest

USER root

RUN mkdir /service

COPY services/ /service/

RUN rm /etc/nginx/conf.d/default.conf && \
    mv /service/nginx.conf /etc/nginx/nginx.conf 

WORKDIR /service/

RUN chmod +x /service/init.sh

ENTRYPOINT [ "./init.sh" ]   