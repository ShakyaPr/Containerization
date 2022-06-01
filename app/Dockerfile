# your code goes here ...
FROM python:3.11-rc-slim AS builder

USER root

RUN mkdir -p /service/src

COPY src/ /service/src/

RUN pip install --upgrade pip && \
    pip install -r /service/src/requirements.txt

EXPOSE 8000

WORKDIR /service/src

RUN chmod +x /service/src/run.sh

ENTRYPOINT [ "./run.sh" ]

