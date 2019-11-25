#! /usr/bin/sh
# kube-scheduler
openssl genrsa -out keys/kube-scheduler.key 2048
openssl req -new -key keys/kube-scheduler.key -subj "/CN=system:kube-scheduler" -out keys/kube-scheduler.csr
openssl x509 -req -in keys/kube-scheduler.csr -CA keys/ca.crt -CAkey keys/ca.key -CAcreateserial -out keys/kube-scheduler.crt -days 10000