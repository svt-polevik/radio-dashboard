FROM debian:bookworm-slim

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    python3 \
    curl \
    git \
    sudo
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
RUN apt-get update && apt-get install -y nodejs
RUN apt-get clean && rm -rf /tmp/* /var/tmp/*

RUN git clone https://github.com/ABTSoftware/SciChart.JS.Examples SciChart.JS
RUN cd SciChart.JS\\Examples
RUN ls
RUN npm install
RUN node -v
RUN npm -v
