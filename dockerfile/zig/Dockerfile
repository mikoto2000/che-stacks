# コンテナとして使う環境を作る
FROM mikoto2000/zig:latest

LABEL maintainer "mikoto2000 <mikoto2000@gmail.com>"
LABEL version="1.0.0"
LABEL description "zig: 0.6.0+4e63cae36"

RUN mkdir -p /projects && \
    # Change permissions to let any arbitrary user
    for f in "${HOME}" "/etc/passwd" "/projects"; do \
      echo "Changing permissions on ${f}" && chgrp -R 0 ${f} && \
      chmod -R g+rwX ${f}; \
    done;

COPY --chown=0:0 entrypoint.sh /
ENV HOME=/home/user
WORKDIR /projects

ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["tail", "-f", "/dev/null"]


