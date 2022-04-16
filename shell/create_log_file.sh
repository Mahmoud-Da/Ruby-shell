#!/bin/bash
function usage {
  cat <<EOF

使用方法:
  $(basename ${0}) [-h|--help] ダイレクトリー指定します

注意：
ファイルはすでに作成されている場合は二度を作成できません。

例：
./create_log_file.sh ruby

オプション:
  --help, -h    ヘルプを表示

EOF

exit 2
}


if [ $# -eq 0 ]; then
  printf "\033[31m%s\033[m\n" "ERROR: ログファイルを記入してください"
  usage
  exit 1
fi

log_place=$1

cd "$(dirname $0)"/..

if [ $1 = "-h" -o $1 = "--help" ]; then
  usage
elif [ $1 == 'ruby' ]; then
  cd ruby/log/
  touch | cat log_sample.txt >> "$(date +%F).txt"
  echo "ログはrubyファイルに作成されました。"
elif [ $1 == 'shell' ]; then
  cd shell/log/
  touch | cat log_sample.txt >> "$(date +%F).txt"
  echo "ログはshellファイルに作成されました。"
else
  printf "\033[31m%s\033[m\n" "ERROR: 下記の使用方法を再度ご確認ください"
  usage
  exit 1
fi
