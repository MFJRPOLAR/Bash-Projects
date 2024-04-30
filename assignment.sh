#! /bin/bash

# Computes and returns the total cost of all items 
# starting with the first and continuing up 
# to and including the item at the input number.
get_total_cost () {
    # You must update this return statement so that
    # it returns the computed total cost.
    let total=0
    total=$((total+$1))
    return $total
}

item=("Patridge in a Pear Tree" "Turtle Dave" "French Hen" "Calling Bird" "Gold Ring" "Geese a Laying" "Swans a Swimming" "Maides a Milking" "Ladies Dancing" "Lords A Leaping" "Piper Piping" "Drummer Drumming")
cost=(15 27 15 14 9 25 5 7 18 14 27 26)

read -p 'Please input a number (1 - 12): ' number 


if [ $number -ge 12 ] || [ $number -le 0 ]
then 
    echo 'Number must be between 1 and 12' 
else 
    while [ $number -le 12 ] && [ $number -ge 1 ]
    do
        let start_number=$number
        number=$((number-1))
        echo Number$'\t'$start_number
        echo Item$'\t'${item[number]}
        echo Cost$'\t''$'${cost[number]}
        total=$((total+$get_total_cost${cost[number]}))
        echo Total$'\t''$'$total
        read -p 'Please input a number (1 - 12): ' number
    done
    echo 'Number must be between 1 and 12'
fi 
