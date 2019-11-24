# Building Production image

FROM kroniak/ssh-client
LABEL maintainer="Aplyca" description="SSH Tunnel"

RUN wget -q -O /usr/local/bin/confd https://github.com/kelseyhightower/confd/releases/latest/download/confd-0.16.0-linux-amd64 && \
    chmod +x /usr/local/bin/confd && \
    mkdir -p /root/.ssh

COPY config /etc/confd/conf.d
COPY templates /etc/confd/templates

CMD ["sh", "-c", "confd -onetime -backend env && ssh -N -4 tunnel"]