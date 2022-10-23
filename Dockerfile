FROM ubuntu:22.04
USER root
    RUN useradd -m developer && \
        echo "developer:123" | chpasswd && \
        adduser developer sudo
    RUN apt-get update && apt-get install -y \ 
        build-essential \
        cmake \
        sudo \
        plantuml \
        clang-format \
        git && \
        rm -rf /var/lib/apt/lists/*
    
USER developer
    RUN mkdir -p /home/developer/Project
    WORKDIR /home/developer/Project

ENTRYPOINT [ "/bin/bash", "-c" ]