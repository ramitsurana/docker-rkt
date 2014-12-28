# Dockerfile for Rocket

Give the tires on [rocket](https://github.com/coreos/rocket) a kick.

```
$ docker pull nickethier/rkt

$ docker run -v /mnt:/var/lib/rkt --privileged nickethier/rkt fetch https://github.com/coreos/etcd/releases/download/v0.5.0-alpha.4/etcd-v0.5.0-alpha.4-linux-amd64.aci

$ docker run -v /mnt:/var/lib/rkt --privileged nickethier/rkt run https://github.com/coreos/etcd/releases/download/v0.5.0-alpha.4/etcd-v0.5.0-alpha.4-linux-amd64.aci

$ docker run -it --rm -v /mnt:/var/lib/rkt --privileged --entrypoint="sh" nickethier/rkt

% rkt help

```


