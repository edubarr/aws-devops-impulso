#!/bin/bash

echo "Building images..."

docker build -t edubarr/project-back:1.0 backend/.
docker build -t edubarr/project-db:1.0 database/.

echo "Pushing to dockerhub..."

docker push edubarr/project-back:1.0
docker push edubarr/project-db:1.0

echo "Creating Services on K8s Cluster..."

kubectl apply -f ./services.yml

echo "Creating deployment on K8s Cluster..."

kubectl apply -f ./deployment.yml

echo "Done."