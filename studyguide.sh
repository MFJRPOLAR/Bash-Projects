#! /bin/bash

# Use a while loop to through the numbers as defined by start and stop
# and for each number display to the terminal a message indicating if
# the number is odd or even. 
odd_or_even () {
    start=$1 
    stop=$2

    while [ $start -le $stop ]
    do
        if [ $((start % 2)) == 0 ]
        then
            echo $start' is even'
        else 
            echo $start' is odd'
        fi
        ((start++))
    done

    
}


read -p 'Please input starting number (1-10): ' start_number
read -p 'Please input stopping number (1-10): ' stop_number

if [ $start_number -lt 1 ] || [ $start_number -gt 10 ]
then 
    echo 'Starting number must be between 1 and 10.'
elif [ $stop_number -lt 1 ] || [ $stop_number -gt 10 ]
then
    echo 'Stop number must be between 1 and 10.'
elif [ $start_number -gt $stop_number ]
then
    echo 'Staring number must be less than stopping number.'
else
    odd_or_even $start_number $stop_number
fi