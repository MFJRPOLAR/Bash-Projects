#! /bin/bash

# Computes and returns the total cost of all items 
# starting with the first and continuing up 
# to and including the item at the input number.
get_total_cost () {
    # You must update this return statement so that
    # it returns the computed total cost.
    total_cost=0
    counter=$1
    
    while [ $counter -ge 0 ]
    do 
        ((total_cost += ${cost[$counter]}))

        (( counter -- ))
    done 
    return $total_cost
}

item=('Partridge in a Pear Tree' 'Turtle Dave' 'French Hen' 'Calling Bird' 'Gold Ring' 'Geese a Laying' 'Swans a Swimming' 'Maides a Milking' 'Ladies Dancing' 'Lords a Leaping' 'Piper Piping' 'Drummer Drumming')
cost=(15 27 15 14 9 25 5 7 18 14 27 26)
read -p 'Input a number between (1-12): ' number

if [ $number -lt 1 ] || [ $number -gt 12 ]
then 
    echo 'Number must be between 1 and 12.'
else 
    echo Number $number
    echo 'Item '${item[number-1]}
    echo 'Cost $'${cost[number-1]}
    ((number--))
    get_total_cost $number
    total=$?
    echo 'Total $'$total
fi



