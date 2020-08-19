# コンテナとして使う環境を作る
FROM debian:buster-slim

LABEL maintainer "mikoto2000 <mikoto2000@gmail.com>"
LABEL version="1.0.0"
LABEL description "ruby: 1:2.5.1"

USER root

# aarch64 用のバイナリビルドができる環境を構築
RUN apt-get update && apt-get -y install --no-install-recommends \
    ruby=1:2.5.1 \
    make \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY --chown=0:0 entrypoint.sh /
RUN mkdir -p /home/user && chgrp -R 0 /home && chmod -R g=u /etc/passwd /etc/group /home && chmod +x /entrypoint.sh

USER 10001

ENV HOME=/home/user
WORKDIR /projects
ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["tail", "-f", "/dev/null"]

