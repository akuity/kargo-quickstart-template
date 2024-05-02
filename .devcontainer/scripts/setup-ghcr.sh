#!/bin/bash

## Login to ghcr
echo ${GITHUB_TOKEN} | docker login --username ${GITHUB_USER} --password-stdin ghcr.io

## This will create the image repo on GHCR
docker buildx imagetools create \
    ghcr.io/akuity/guestbook:latest \
    -t ghcr.io/${GITHUB_USER}/guestbook:v0.0.1

## Exit
exit 0

##
##
