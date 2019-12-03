# Building Production image

FROM kroniak/ssh-client
LABEL maintainer="Aplyca" description="SSH Tunnel"

RUN apk --quiet --progress --update --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing add confd && \
    mkdir -p /root/.ssh

COPY config /etc/confd/conf.d
COPY templates /etc/confd/templates

CMD ["sh", "-c", "confd -onetime -backend env && ssh -N -4 tunnel"]
