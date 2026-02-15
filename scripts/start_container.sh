#!/bin/bash

docker pull public.ecr.aws/s2q8f2k8/ci-cd-repo:latest

docker stop app || true
docker rm app || true

docker run -d --name app -p 8080:80 public.ecr.aws/s2q8f2k8/ci-cd-repo:latest