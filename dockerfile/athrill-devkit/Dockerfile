# コンテナとして使う環境を作る
FROM mikoto2000/athrill-devkit:20221204

LABEL maintainer "mikoto2000 <mikoto2000@gmail.com>"
LABEL version="20221204"
LABEL description "make:4.3-4.1, gcc:4:10.2.1-1, g++:4:10.2.1-1, rsync:3.2.3-4+deb11u1"

COPY --chown=0:0 entrypoint.sh /
RUN mkdir -p /home/user && chgrp -R 0 /home && chmod -R g=u /etc/passwd /etc/group /home && chmod +x /entrypoint.sh

USER 10001

ENV HOME=/home/user
WORKDIR /projects
ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["tail", "-f", "/dev/null"]

