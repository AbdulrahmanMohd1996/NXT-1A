#!/bin/bash

# Variables
CLUSTER_NAME="your-cluster-name"
REGION="your-region"
NAMESPACE="default"

# Update kubeconfig
aws eks --region $REGION update-kubeconfig --name $CLUSTER_NAME

# Apply Kubernetes YAML files
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl apply -f ingress.yaml

echo "Deployment to AWS EKS completed successfully."
