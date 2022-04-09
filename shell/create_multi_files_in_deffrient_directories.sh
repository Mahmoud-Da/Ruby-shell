#!/bin/bash
ROOT='out'
mkdir "$ROOT"

for ((i=1;i<=$#;i++)); do
    mkdir "$ROOT/dir_$i"
    for ((j=1;j<= ${!i} ;j++)); do
      touch "$ROOT/dir_$i/file_$j.txt"
    done
done
