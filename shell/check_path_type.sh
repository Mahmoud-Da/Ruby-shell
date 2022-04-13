#! /bin/bash
if [[ "$1" = /* ]]; then
  echo 'this is absolute path';
else
  echo 'this is a relative path';
fi
