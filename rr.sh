#!/bin/bash

# rr.shの有るディレクトリ
BASE_DIR=$(cd $(dirname $0); pwd)

if [ $# -eq 0 ] ; then
  source ${BASE_DIR}/module_list.sh
  exit 255
fi

if [ $# -ge 2 ]; then
    echo "引数多すぎ２個以上"
    exit 254
fi

ARG1=$1
IFS=':'
set -- ${ARG1}
MODULE=$1
COMMAND=$2

if [ $# -ge 3 ]; then
    echo "コマンドのコロンの数が多すぎ"
    exit 253
fi

if [ $# -eq 1 ]; then
    source ${BASE_DIR}/command_list.sh
    exit 0
fi

source ${BASE_DIR}/modules/${MODULE}/${COMMAND}/exec/exec.sh




