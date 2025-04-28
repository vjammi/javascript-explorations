#!/bin/bash
echo "Applying Kubernetes manifests for GraphQL Hive core services..."
kubectl apply -f namespace.yaml
kubectl apply -f configmap.yaml
kubectl apply -f secret.yaml
kubectl apply -f hive-server-deployment.yaml
kubectl apply -f hive-server-service.yaml
kubectl apply -f hive-web-deployment.yaml
kubectl apply -f hive-web-service.yaml
kubectl apply -f ingress.yaml
echo "✅ Core services deployed successfully!"
