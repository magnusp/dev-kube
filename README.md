# dev-kube
A collection of manifests that will set up a kind cluster with commonly used infrastructure services

# Loadbalancer via cloud-provider-kind
> git clone git@github.com:kubernetes-sigs/cloud-provider-kind.git
> docker compose -f cloud-provider-kind/compose.yml

# Install nginx ingress
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
