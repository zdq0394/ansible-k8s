#! /usr/bin/sh
# generate service account for kubelet
openssl genrsa -out keys/kubelet.key 2048
openssl req -new -key keys/kubelet.key \
    -subj "/CN=system:node:kubelet /O=system:nodes" \
    -out keys/kubelet.csr
openssl x509 -req -in keys/kubelet.csr \
    -CA keys/ca.crt \
    -CAkey keys/ca.key \
    -CAcreateserial \
    -out keys/kubelet.crt \
    -days 3650