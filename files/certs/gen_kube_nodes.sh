#! /usr/bin/sh
# kube-proxy
openssl genrsa -out keys/kube-proxy.key 2048
openssl req -new -key keys/kube-proxy.key -subj "/CN=system:kube-proxy" -out keys/kube-proxy.csr
openssl x509 -req -in keys/kube-proxy.csr -CA keys/ca.crt -CAkey keys/ca.key -CAcreateserial -out keys/kube-proxy.crt -days 10000

# kubelet
openssl genrsa -out keys/kubelet.key 2048
openssl req -new -key keys/kubelet.key -subj "/CN=system:node:kubelet /O=system:nodes" -out keys/kubelet.csr
openssl x509 -req -in keys/kubelet.csr -CA keys/ca.crt -CAkey keys/ca.key -CAcreateserial -out keys/kubelet.crt -days 10000