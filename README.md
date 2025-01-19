# 2day_free_job_prepare_exp2025

kubectl create deployment myd --image=vimal13/apache-webserver-php:v23
kubectl scale deployment myd --replicas=5



kubectl create deployment myd --image=vimal13/apache-webserver-php  --dry-run -o yaml  > d.yml

kubectl apply -f d.yml


kubectl create namespace argocd

kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

kubectl config set-context --current --namespace=argocd

argocd login --core

argocd admin initial-password -n argocd

kubectl port-forward svc/argocd-server -n argocd 8080:443


kubectl delete all --all   -n default

kubectl expose deployment myd  -n default --type LoadBalancer --port 80 --target-port 5000 --dry-run -o yaml > s.yml






