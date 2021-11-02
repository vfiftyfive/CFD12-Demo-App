#!/usr/bin/env bash

export KUBECONFIG="/Users/nvermande/.kube/rancher-nic-laptop"
echo -e "Deleting STS..."
kubectl delete sts mongodb 2> /dev/null
echo -e "Deleting PVC..."
kubectl delete pvc --all 2> /dev/null
echo -e "Deleting Jobs..."
kubectl delete job --all 2> /dev/null
echo -e "Deleting Service..."
kubectl delete svc mongodb 2> /dev/null
