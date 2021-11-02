#!/usr/bin/env bash

export KUBECONFIG="/Users/nvermande/.kube/rancher-nic-laptop"
echo -e "Deleting STS..."
kubectl delete sts mongodb 2> /dev/null
echo -e "Deleting PVC..."
kubectl delete pvc --all 2> /dev/null
echo -e "Deleting Jobs..."
kubectl delete job --all 2> /dev/null
echo -e "Deleting Services..."
kubectl delete svc mongodb 2> /dev/null
kubectl delete svc marvel-frontend 2> /dev/null
echo -e  "Deleting Deployment..."
kubectl delete deploy marvel-frontend 2> /dev/null
