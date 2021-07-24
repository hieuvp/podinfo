#!/usr/bin/env bash

set -eoux pipefail

declare PACKAGE_NAME=unarchived-sample

# If mark this repository as archived and read-only, you will receive an error:
# denied: Repository "hieuvp/podinfo" is archived and can't accept package uploads.

# docker login docker.pkg.github.com

docker build --tag "docker.pkg.github.com/hieuvp/podinfo/${PACKAGE_NAME}:latest" .
docker push "docker.pkg.github.com/hieuvp/podinfo/${PACKAGE_NAME}:latest"
