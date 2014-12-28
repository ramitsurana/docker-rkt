# Dockerfile for Rocket

Created so I could easily play with [rocket](https://github.com/coreos/rocket).

```
$ docker pull nickethier/rkt

$ docker --tls run -v /mnt:/var/lib/rkt --privileged nickethier/rkt fetch https://github.com/coreos/etcd/releases/download/v0.5.0-alpha.4/etcd-v0.5.0-alpha.4-linux-amd64.aci

$ docker --tls run -v /mnt:/var/lib/rkt --privileged nickethier/rkt run https://github.com/coreos/etcd/releases/download/v0.5.0-alpha.4/etcd-v0.5.0-alpha.4-linux-amd64.aci

$ docker --tls run -it --rm -v /mnt:/var/lib/rkt --privileged --entrypoint="sh" nickethier/rkt

% rkt help

```


