# コンテナとして使う環境を作る
FROM mikoto2000/che-stack-base:debian

LABEL maintainer "mikoto2000 <mikoto2000@gmail.com>"
LABEL version="4:8.3.0-1"
LABEL description "gcc-aarch64-linux-gnu: 4:8.3.0-1"

USER root

# aarch64 用のバイナリビルドができる環境を構築
RUN apt-get update && apt-get -y upgrade && apt-get -y install \
    gcc-aarch64-linux-gnu=4:8.3.0-1 \
    gdb-multiarch=8.2.1-2+b1 \
    make \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER user

