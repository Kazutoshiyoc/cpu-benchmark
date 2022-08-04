# Ops/secを計算して環境変数に保管
export ops_per_sec_calced=$(echo "scale=1; ${ops_num}/${sec_exec}/1000000" | bc 2>&1)
export ops_per_sec_theoritical=$(echo "scale=1; ${ops_per_sec_calced}*${cpu_threads}" | bc 2>&1)

# 実行時間を環境変数に保管
export sec__exec_time=${sec_exec}

# 結果を整形して出力
bash ./script/print_result.sh
