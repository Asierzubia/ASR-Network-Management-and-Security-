ps -eo pid,state | tail -n +2 | while read process_id estado
do
    if [[ $estado == "T" ]]
    then
        echo $process_id
    fi
done