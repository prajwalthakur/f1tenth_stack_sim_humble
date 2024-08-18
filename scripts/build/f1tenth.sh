#!/bin/bash

docker build --rm $@ -t f1tenth_humble:latest -f "$(dirname "$0")/../../docker/f1tenth_humble.Dockerfile" "$(dirname "$0")/../.."