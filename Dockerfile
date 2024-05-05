FROM debian:bookworm-slim

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    build-essential \
    python3 \
    curl \
    sudo
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
RUN apt-get update
RUN apt-get clean && rm -rf /tmp/* /var/tmp/*
RUN /bin/bash
