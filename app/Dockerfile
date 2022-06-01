# your code goes here ...
FROM python:3.11-rc-slim AS builder

ARG APP_USER=app
ARG APP_GROUP=app

USER root

RUN mkdir -p /service/src

COPY src/ /service/src/
COPY run.sh /service/

RUN pip install --upgrade pip && \
    pip install -r /service/src/requirements.txt

RUN groupadd ${APP_GROUP} && \
    useradd -g ${APP_GROUP} ${APP_USER} && \
    mkdir /home/${APP_USER} && \
    chown -R ${APP_USER}:${APP_GROUP} /home/${APP_USER}

EXPOSE 8000 

RUN chown -R "$APP_USER":"$APP_GROUP" /service && \
    chmod 755 /service/run.sh

USER ${APP_USER}

WORKDIR /service

ENTRYPOINT [ "./run.sh" ]

