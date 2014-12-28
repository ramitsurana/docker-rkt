FROM progrium/busybox
MAINTAINER Nick Ethier <ncethier@gmail.com>

ADD https://github.com/coreos/rocket/releases/download/v0.1.1/rocket-v0.1.1.tar.gz /tmp/rocket.tar.gz
RUN cd /tmp && gunzip /tmp/rocket.tar.gz && tar xvf /tmp/rocket.tar && mv /tmp/rocket-v0.1.1/rkt /bin/ && rm -rf /tmp/rocket.tar /tmp/rocket-v0.1.1

RUN opkg-install ca-certificates

RUN for cert in `ls -1 /etc/ssl/certs/*.crt | grep -v /etc/ssl/certs/ca-certificates.crt`; do cat "$cert" >> /etc/ssl/certs/ca-certificates.crt; done

VOLUME ["/var/lib/rkt"]

ENTRYPOINT ["/bin/rkt"]
CMD []
