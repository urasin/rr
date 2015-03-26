#!/bin/bash

ls -1 ${BASE_DIR}/modules > ${BASE_DIR}/tmp2015

echo "#### Module List(モジュール一覧) #####"
while read module_name
do
    echo -e "  ${module_name}: \"`cat ${BASE_DIR}/modules/${module_name}/explain.txt 2>> /dev/null`\""
done < ${BASE_DIR}/tmp2015

rm ${BASE_DIR}/tmp2015