#! /bin/bash
if [ $1 == 'ok' ]; then
  echo "stdout" >> ok.txt
fi

if [ $1 == 'ng' ]; then
  echo "エラーです！" >> ng.txt
fi
