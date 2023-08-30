#!/bin/bash

function show_progress_bar() {
    duration=$1
    progress_bar_length=$2
    sleep_interval=$(echo "scale=2; $duration/$progress_bar_length" | bc)

    for ((i=0; i<=progress_bar_length; i++)); do
        percent=$((i*100/progress_bar_length))
        progress=$(for ((j=0; j<i; j++)); do echo -n '#'; done)
        remaining=$(for ((j=i; j<progress_bar_length; j++)); do echo -n '.'; done)
        echo -ne "Progress: [$progress$remaining] $percent% \r"
        sleep $sleep_interval
    done


    echo -e "\nDone sleeping!"
}

show_progress_bar 20 20