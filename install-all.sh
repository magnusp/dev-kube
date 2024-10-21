#!/bin/bash

set -e
set -u

# Minio
kubectl apply -k minio-single-server -n minio-operator

# Postgres operator
kubectl apply -f https://raw.githubusercontent.com/zalando/postgres-operator/refs/tags/v1.13.0/manifests/configmap.yaml
kubectl apply -f https://raw.githubusercontent.com/zalando/postgres-operator/refs/tags/v1.13.0/manifests/operator-service-account-rbac.yaml
kubectl apply -f https://raw.githubusercontent.com/zalando/postgres-operator/refs/tags/v1.13.0/manifests/postgres-operator.yaml
kubectl apply -f https://raw.githubusercontent.com/zalando/postgres-operator/refs/tags/v1.13.0/manifests/api-service.yaml
kubectl apply -k github.com/zalando/postgres-operator/ui/manifests

# Strimzi Kafka operator
kubectl create namespace kafka
kubectl create -f 'https://strimzi.io/install/latest?namespace=kafka'
