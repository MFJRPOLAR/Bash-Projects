#! /bin/bash

# Values must be enclose in parenthesis and seperated by spaces.

# Retrivial of a value relies on using the index just as it does 
# in other programming lnaguages. The first index number is 0.

# Create an array of 5 strings. 
grades=("A" "B" "C" "D" "F")

# Display the values in the first and fifth elements. 
echo ${grades[0]}
echo ${grades[4]}

# Display all the values in the array. 
echo ${grades[@]}

# Display the lenght of the array. 
echo "${#grades[@]}"

# Add a six element to the array. 
grades[5]="F-"

#Update the value in the third element. 
grades[2]="C-"

# Display all the values in the array. 
echo ${grades[@]}

# Display the lenght of the array. 
echo "${#grades[@]}"

# Loop through array. 
for grade in "${grades[@]}"
do 
    #Display current element 
    echo $grade 
done
