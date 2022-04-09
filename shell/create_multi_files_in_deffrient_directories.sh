#!/bin/bash

ROOT='out'
mkdir "$ROOT"


for ((i=1;i<='$#';i++)); do
    mkdir "$ROOT/$i"
    for ((j=1;j<='$i';j++)); do
        touch "$ROOT/$i/$j"
    done
done