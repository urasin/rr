#!/bin/bash

ls -1 ${BASE_DIR}/modules/${MODULE}/ | grep -v explain.txt > ${BASE_DIR}/tmp2016
echo "#### Command List: ${MODULE} #####"
while read com
do
    echo "  ${MODULE}:$com \"`cat ${BASE_DIR}/modules/${MODULE}/${com}/explain.txt 2>> /dev/null`\""
done < ${BASE_DIR}/tmp2016
rm ${BASE_DIR}/tmp2016