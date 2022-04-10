#!/bin/bash
root='out'
mkdir "$root"
for (( i=1;i<=$#;i++ )); do
  mkdir "$root/dir_$i"
  for (( j=1;j<= ${!i} ;j++ )); do
    touch "$root/dir_$i/file_$j.txt"
  done
done
