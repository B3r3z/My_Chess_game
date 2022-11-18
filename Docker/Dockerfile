FROM ubuntu:22.04
USER root
  #  RUN useradd -m developer && \
  #      echo "developer:123" | chpasswd && \
  #      adduser developer sudo
    RUN apt-get update && apt-get install -y  \ 
        build-essential \
        cmake \
        sudo \
        plantuml \
        clang-format \
        git && \
        rm -rf /var/lib/apt/lists/*

    RUN apt-get update && apt-get install -y ca-certificates curl gnupg
    RUN curl -fsSL https://storage.googleapis.com/www.bazel.build/bazel-release.pub.gpg | gpg --dearmor >bazel-archive-keyring.gpg
    RUN mv bazel-archive-keyring.gpg /usr/share/keyrings/
    RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/bazel-archive-keyring.gpg] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
    RUN apt-get update && apt-get install -y\
        bazel \
        protobuf-compiler \
        libzmq3-dev

#USER developer
    RUN mkdir -p /home/developer/Project
    WORKDIR /home/developer/Project

ENTRYPOINT [ "/bin/bash", "-c" ]



