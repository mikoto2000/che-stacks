# コンテナとして使う環境を作る
FROM mikoto2000/athrill-devkit:20221204

LABEL maintainer "mikoto2000 <mikoto2000@gmail.com>"
LABEL version="20221204"
LABEL description "cmake:3.16.3-1ubuntu1.20.04.1, make:4.2.1-1.2, gcc:4:9.3.0-1ubuntu2, g++:4:9.3.0-1ubuntu2, rsync:3.1.3-8ubuntu0.4, libspdlog-dev=1:1.5.0-1"

COPY --chown=0:0 entrypoint.sh /
RUN mkdir -p /home/user && chgrp -R 0 /home && chmod -R g=u /etc/passwd /etc/group /home && chmod +x /entrypoint.sh

USER 10001

ENV HOME=/home/user
WORKDIR /projects
ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["tail", "-f", "/dev/null"]

