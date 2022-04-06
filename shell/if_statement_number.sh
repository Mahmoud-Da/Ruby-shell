#! /bin/bash
a=4
b=6
if [[ "$a" -lt "$b" ]]; then
  echo "aはbより小さいです"
elif [[ "$a" -gt "$b" ]]; then
  echo "aはbより大きいです"
else
  echo "aとbは等しいです"
fi
