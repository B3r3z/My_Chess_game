#! /bin/bash

version="0.3"
scriptDir=$(dirname $0 | xargs -i readlink -f {})


docker build -t chess:$version $scriptDir