#!/bin/bash

set -e

# Ensure we're using Minikube's Docker
eval $(minikube docker-env)

echo "🔨 Building local Docker images for GraphQL Hive..."

services=(
  gateway
  registry
  tokens
  usage
  cdn
)

for svc in "${services[@]}"; do
  echo "📦 Building $svc..."
  docker build -t graphql-hive/$svc:local ./packages/services/$svc
done

echo "📄 Generating Kubernetes manifests..."
mkdir -p ./k8s

for svc in "${services[@]}"; do
  cat > ./k8s/hive-$svc.yaml <<EOFYAML
apiVersion: apps/v1
kind: Deployment
metadata:
  name: hive-$svc
spec:
  replicas: 1
  selector:
    matchLabels:
      app: hive-$svc
  template:
    metadata:
      labels:
        app: hive-$svc
    spec:
      containers:
        - name: $svc
          image: graphql-hive/$svc:local
          imagePullPolicy: Never
          ports:
            - containerPort: 4000
---
apiVersion: v1
kind: Service
metadata:
  name: hive-$svc
spec:
  type: ClusterIP
  selector:
    app: hive-$svc
  ports:
    - port: 4000
      targetPort: 4000
EOFYAML
done

echo "✅ Docker images built and manifests generated under k8s/"
