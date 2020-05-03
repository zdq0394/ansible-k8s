#! /usr/bin/sh
# admin
openssl genrsa -out keys/admin.key 2048
openssl req -new -key keys/admin.key \
    -subj "/CN=cluster-admin /O=system:masters" \
    -out keys/admin.csr
openssl x509 -req -in keys/admin.csr \
    -CA keys/ca.crt \
    -CAkey keys/ca.key \
    -CAcreateserial \
    -out keys/admin.crt \
    -days 3650