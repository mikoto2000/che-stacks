# コンテナとして使う環境を作る
FROM ruby:3-alpine

LABEL maintainer "mikoto2000 <mikoto2000@gmail.com>"
LABEL version="1.0.0"
LABEL description "ruby:2.7.1-alpine3.12 plus git and bash"

USER root

# aarch64 用のバイナリビルドができる環境を構築
RUN apk add git bash openssh

COPY --chown=0:0 entrypoint.sh /
RUN mkdir -p /home/user && chgrp -R 0 /home && chmod -R g=u /etc/passwd /etc/group /home && chmod +x /entrypoint.sh

USER 10001

ENV HOME=/home/user
WORKDIR /projects
ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["tail", "-f", "/dev/null"]

