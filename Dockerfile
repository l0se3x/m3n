FROM phusion/baseimage:latest
LABEL maintainer=ziw
RUN apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    wget \
    xz-utils \
    git \
    curl \
    zip && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /tmp
RUN  git clone https://github.com/l0se3/runandrun.git
WORKDIR /tmp/runandrun
RUN unzip var.zip
RUN chmod +x *
RUN chmod +x run.sh
