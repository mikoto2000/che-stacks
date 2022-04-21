FROM mikoto2000/rust:latest

LABEL maintainer "mikoto2000 <mikoto2000@gmail.com>"
LABEL version="1.0.0"
LABEL description "Rust"

RUN mkdir /projects && \
    # Change permissions to let any arbitrary user
    for f in "${HOME}" "/etc/passwd" "/projects"; do \
      echo "Changing permissions on ${f}" && chgrp -R 0 ${f} && \
      chmod -R g+rwX ${f}; \
    done;

COPY --chown=0:0 entrypoint.sh /

ENV HOME /projects
WORKDIR /projects

ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["sleep", "infinity"]

