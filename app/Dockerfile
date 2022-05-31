# your code goes here ...
FROM python:3.11-rc-slim AS builder

USER root

RUN mkdir -p /services/src

COPY src/ /services/src

RUN pip install --upgrade pip && \
    pip install -r /services/src/requirements.txt



