# コンテナとして使う環境を作る
FROM mikoto2000/tauri:latest

LABEL maintainer "mikoto2000 <mikoto2000@gmail.com>"
LABEL version="1.0.0"
LABEL description "Tauri devkit."

# VNC 関連をインストール
USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt install -y \
        xserver-xorg \
        fluxbox \
        tigervnc-standalone-server \
        tigervnc-common \
        novnc \
        xterm \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV HOME=/home/node

RUN mkdir /projects && \
    # Change permissions to let any arbitrary user
    for f in "/etc/passwd" "/projects"; do \
      echo "Changing permissions on ${f}" && chgrp -R 0 ${f} && \
      chmod -R g+rwX ${f}; \
    done; \
    for f in "${HOME}" ".bash_logout" ".bashrc" ".cargo" ".profile" ".rustup"; do \
      chgrp 0 ${f} && chmod g+rwX ${f}; \
    done;

COPY --chown=0:0 entrypoint.sh /

WORKDIR /projects

EXPOSE 6080
ENV VNC_PASSWORD=mytauriapp
ENV DISPLAY=:1

ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["sleep", "infinity"]

