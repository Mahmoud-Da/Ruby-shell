#! /bin/bash
for i in {1..5}
do
  if ! (( i % 2 )); then
  echo "$i"
  fi
done
