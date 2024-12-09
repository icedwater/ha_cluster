FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    vim \
    net-tools \
    keepalived \
    haproxy

EXPOSE 80
EXPOSE 8404
