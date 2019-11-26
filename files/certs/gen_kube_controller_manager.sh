#! /usr/bin/sh
# kube-controller-manager
openssl genrsa -out keys/kube-controller-manager.key 2048
openssl req -new -key keys/kube-controller-manager.key -subj "/CN=system:kube-controller-manager" -out keys/kube-controller-manager.csr
openssl x509 -req -in keys/kube-controller-manager.csr -CA keys/ca.crt -CAkey keys/ca.key -CAcreateserial -out keys/kube-controller-manager.crt -days 10000