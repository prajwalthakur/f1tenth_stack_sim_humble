#!/bin/bash

# Get base.sh funcs
source "$(dirname "$0")/base.sh"

stop_docker


mode="gpu"

while getopts 'gh' opt; do
    case "$opt" in
        g)
            mode="gpu"
            ;;
        ?|h)
            echo "Usage: $(basename $0) [-g]"
            exit 1
            ;;
    esac
done
shift "$(($OPTIND -1))"

if [ "$mode" == "gpu" ]; then
    run_docker --runtime=nvidia \
    -v $absolute_path/workspace/:/root/workspace/src \
    f1tenth_humble:latest bash
else
    run_docker \
    -v $absolute_path/workspace/:/root/workspace/src \
    f1tenth_humble:latest bash
fi
