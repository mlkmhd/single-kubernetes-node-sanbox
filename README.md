## Kubernetes single node sandbox with rancher

with this repository you can bring up a single sandbox Kubernetes node quickly!

you can run it with the following commands:
```bash
$ git clone https://github.com/mlkmhd/single-kubernetes-node-sanbox
$ cd single-kubernetes-node-sanbox
$ docker-compose up -d
```
or
```bash
$ git clone https://github.com/mlkmhd/single-kubernetes-node-sanbox
$ cd single-kubernetes-node-sanbox
$ ./run-single-kubernetes-node.sh
```

## Demo
you can browse Rancher UI dashboard with the following URL: `http://localhost`

if you like to interact with the rancher using `kubectl` or `helm` you have to copy `k3s.yaml` file from container to host with the following commands:

```bash
$ mkdir -p ~/.kube
$ docker cp rancher:/etc/rancher/k3s/k3s.yaml ~/.kube/config
$ kubectl get pods --all-namespaces # now it should work and give you all pods inside kubernetes
$ helm ls 
```