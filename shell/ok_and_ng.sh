#! /bin/bash
if [ $1 == 'ok' ]; then
  echo "$(</dev/stdin)" >> ok.txt
fi

if [ $1 == 'ng' ]; then
  echo "$(</dev/stderr)" >> ng.txt
fi
