#!/usr/bin/env bash

# exit on error
set -e

#set variables
CONTAINER_NAME="researchbridgepartners/nlp-common"
BUILD_PATH="."
PKG_VERSION=$(cat $BUILD_PATH/VERSION)

docker build -f Dockerfile -t $CONTAINER_NAME:$PKG_VERSION $BUILD_PATH/.
docker tag $CONTAINER_NAME:$PKG_VERSION $CONTAINER_NAME:$PKG_VERSION
docker push $CONTAINER_NAME:$PKG_VERSION