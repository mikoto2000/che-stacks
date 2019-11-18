# コンテナとして使う環境を作る
FROM mikoto2000/che-stack-base:debian

LABEL maintainer "mikoto2000 <mikoto2000@gmail.com>"
LABEL version="8.2.1-2+b1"
LABEL description "gdb-multiarch: 8.2.1-2+b1"

USER root

# aarch64 用のバイナリビルドができる環境を構築
RUN apt-get update && apt-get -y install --no-install-recommends \
    gdb-multiarch=8.2.1-2+b1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER user

