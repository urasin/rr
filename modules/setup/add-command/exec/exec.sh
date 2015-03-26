echo "作成するモジュール名を入力して下さい"
read module
echo "作成するコマンド名を入力して下さい"
read com

mkdir -p ${BASE_DIR}/modules/${module}/${com}/exec
touch ${BASE_DIR}/modules/${module}/explain.txt
touch ${BASE_DIR}/modules/${module}/${com}/explain.txt
touch ${BASE_DIR}/modules/${module}/${com}/exec/exec.sh