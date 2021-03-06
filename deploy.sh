#!/bin/bash
echo "Loging in to Dockerhub..."
docker login --username=$DOCKERHUB_ID --password=$DOCKERHUB_PASSWORD
echo "Pushing images..."
docker push "$DOCKERHUB_ID"/aix-bot:latest
docker push "$DOCKERHUB_ID"/aix-actions:latest
