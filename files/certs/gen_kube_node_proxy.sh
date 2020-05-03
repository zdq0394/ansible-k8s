#! /usr/bin/sh
# generate account for kube-proxy
openssl genrsa -out keys/kube-proxy.key 2048
openssl req -new -key keys/kube-proxy.key \
    -subj "/CN=system:kube-proxy" \
    -out keys/kube-proxy.csr
openssl x509 -req -in keys/kube-proxy.csr \
    -CA keys/ca.crt \
    -CAkey keys/ca.key \
    -CAcreateserial \
    -out keys/kube-proxy.crt \
    -days 3650
