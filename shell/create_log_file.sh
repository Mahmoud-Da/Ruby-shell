#!/bin/bash
cd log
$1
if [ "$1" == "" ]; then
  echo "ログ名をお追加お願いします！"
else
  cat log_sample.txt >> $1.txt
fi
