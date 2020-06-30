#!/bin/bash

DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

pushd ${DIR}/..

dotnet publish

cf push Formation.SpringCloud.Service     -f ./ci/manifest.yml -p ./Formation.SpringCloud.Service/bin/Debug/netcoreapp3.1/publish --random-route # random-route is here for dev purpose


popd