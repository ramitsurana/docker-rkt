# Dockerfile for Rocket

Give the tires on [rocket](https://github.com/coreos/rocket) a kick.

```
$ docker pull nickethier/rkt

$ docker run -v /mnt:/var/lib/rkt --privileged nickethier/rkt fetch https://github.com/coreos/etcd/releases/download/v0.5.0-alpha.4/etcd-v0.5.0-alpha.4-linux-amd64.aci

$ docker run -v /mnt:/var/lib/rkt --privileged nickethier/rkt run https://github.com/coreos/etcd/releases/download/v0.5.0-alpha.4/etcd-v0.5.0-alpha.4-linux-amd64.aci

$ docker run -it --rm -v /mnt:/var/lib/rkt --privileged --entrypoint="sh" nickethier/rkt

% rkt help

```

# About Rocket:

rkt (pronounced "rock-it") is a CLI for running app containers, and an implementation of the App Container Spec. The goal of rkt is to be composable, secure, and fast.

# Some of its Advanced features:

1. App Container Image :

An App Container Image (ACI) is a specification for the image format of a container. It is a simple flat tarball that is always signed and optionally encrypted. By convention, an ACI is minimal, meaning it only includes the bits absolutely required to execute the application. Since an ACI may be encrypted, distribution via systems like BitTorrent, public object storage, or mirror networks is a possibility.

2.App Container Runtime :

The App Container Runtime defines what environment and facilities a container runtime should provide. This includes devices, environment variables, and privileges that a container should expect. It also includes a definition of a meta-data service interface for exposing data to the environment from outside the container.





