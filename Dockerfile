FROM ubuntu:22.04
RUN apt update && apt install -y \ 
    build-essential \
    cmake \
    sudo \
    git && \
    rm -rf /var/lib/apt/lists/*

