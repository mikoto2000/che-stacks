# コンテナとして使う環境を作る
FROM ruby:2.7.1-alpine3.12

LABEL maintainer "mikoto2000 <mikoto2000@gmail.com>"
LABEL version="1.0.0"
LABEL description "solargraph"

USER root

# aarch64 用のバイナリビルドができる環境を構築
RUN apk add build-base ruby-dev ruby-full ruby ruby-nokogiri zlib-dev bash sudo \
    && gem install solargraph

RUN ln -s /usr/local/bundle/bin/solargraph /usr/local/bin/solargraph

COPY --chown=0:0 entrypoint.sh /
RUN mkdir -p /home/user && chgrp -R 0 /home && chmod -R g=u /etc/passwd /etc/group /home && chmod +x /entrypoint.sh

USER 10001

ENV HOME=/home/user
WORKDIR /projects
ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["/bin/sh", "-c", "${PLUGIN_REMOTE_ENDPOINT_EXECUTABLE}"]

