#!/usr/bin/env bash
dir=$(pwd -P)
docker run -it --name learn-sh --rm -v $dir:/var/opt alpine:3.8 
