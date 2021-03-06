#!/bin/bash

NAME="autolycus_ui"

if [[ $1 == "--build" || $1 == "-b" ]];then
    CMD="docker build . -t $NAME"
    echo "[exec] $CMD"
    $CMD
elif [[ $1 == "--run" || $1 == "-r" ]];then
    CMD="docker run --rm -it -v $(pwd):/app -v /home/nitin/Downloads/torrents:/downloads -p 3000:3000 --name $NAME --hostname $NAME $NAME bash"
    echo "[exec] $CMD"
    $CMD
elif [[ $1 == "--attach" || $1 == "-a" ]];then
    CMD="docker exec -it $NAME bash"
    echo "[exec] $CMD"
    $CMD
fi