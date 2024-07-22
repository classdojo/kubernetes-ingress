#!/bin/bash

TAG=$(git rev-parse --short HEAD)
PLATFORMS="linux/arm64,linux/amd64"

docker buildx build \
    -f build/Dockerfile \
    --platform "${PLATFORMS}" \
    -t "347708466071.dkr.ecr.us-east-1.amazonaws.com/classdojo/haproxytech/kubernetes-ingress:${TAG}" \
    --pull \
    --push .
