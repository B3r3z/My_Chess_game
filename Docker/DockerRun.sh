#!/bin/bash
scriptDir=$(dirname $0 | xargs -i readlink -f {})

docker run --rm \
    --privileged \
    --name "chess" \
    --env DISPLAY \
    -v $HOME/.Xauthority:/root/.Xauthority \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v "$scriptDir/../src/:/home/developer/Project" \
    -it chess:0.3 /bin/bash