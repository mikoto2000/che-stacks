FROM ubuntu:bionic

LABEL maintainer "mikoto2000 <mikoto2000@gmail.com>"
LABEL version="1.0.0"
LABEL description "TOPPERS cfg build kit."

RUN apt-get update && apt-get -y install --no-install-recommends \
        make \
        wget \
        tar \
        bzip2 \
        g++ \
        libboost-dev \
        libboost-regex-dev \
        libboost-system-dev \
        libboost-filesystem-dev \
        libboost-program-options-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY --chown=0:0 entrypoint.sh /
RUN mkdir -p /home/user && chgrp -R 0 /home && chmod -R g=u /etc/passwd /etc/group /home && chmod +x /entrypoint.sh

USER 10001

ENV HOME=/home/user
WORKDIR /projects
ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["tail", "-f", "/dev/null"]

