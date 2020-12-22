#!/bin/bash

docker rm -f rancher 

docker run --privileged -d --name rancher -v $PWD/registries.yaml:/etc/rancher/k3s/registries.yaml \
        --restart=always --add-host=novinrepo:192.168.39.16 \
        -p 80:80 -p 443:443 -p 6443:6443 \
        -v $PWD/config.toml.tmpl:/var/lib/rancher/k3s/agent/etc/containerd/config.toml.tmpl \
        novinrepo:8082/docker/rancher/rancher:v2.5.3

sleep 60

mkdir -p ~/.kube
docker cp rancher:/etc/rancher/k3s/k3s.yaml ~/.kube/config