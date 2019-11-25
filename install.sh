#! /bin/sh
ansible-playbook k8s-all.yaml -i hosts/multi-nodes.internal --tags etcd,k8s

ansible-playbook uninstall.yaml -i hosts/multi-nodes.internal --tags uninstall-k8s,uninstall-etcd
