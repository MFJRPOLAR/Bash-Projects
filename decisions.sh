#! /bin/bash 

# Basic comparision operators 
# Operator         Operation
# -gt               >
# -lt               <
# -ge               >=
# -le               <=
# -eq               ==
# -ne               != 

# This basic if decision follows the format: 
# if [condition]
# then
# <command>
# fi

# Check if the first command line argument is greater than 100. 
if [ $1 -gt 100 ]
then
    #Display message 
    echo Hey that\'s a large number
    #Displat present working directory 
    pwd
fi

# Display date to terminal. 
date

# Nested if decision 
if [ $1 -gt 100 ]
then
    #Display message 
    echo Hey that\'s a large number
    # Check if the first command line arguement is an even number
    # Must use double parenthesis if you want to check the result 
    # of a mathematical expression.
    if (( $1 % 2 == 0 ))
    then
        # Display message.
        echo And is also an even number
    fi
fi

# The if-else decision follows the format below:
# if [condition]
# then
# <command>
# fi
# else 
# <command> 
# fi 

# Check if there are two command line arguements
if [ $# -eq 2 ]
then
    nl $2 
else
    # Display lines of code in file along with line numbers  
    nl ../Bash-Projects/text.txt 
fi

# The if-else-if decision follows the format below:
# if [condition]
# then
# <command>
# elif [condition]
# then
# <commands>
# else 
# <command> 
# fi 

# Prompt the user for information and store it in 
# variables. 
read -p 'Age: ' age
read -p 'Did you recieve an invitation (yes/no): ' invitation

# check if the input age is greater than 21 
if [ $age -ge 21 ]
then 
    echo You are old enough to go to the party. 
#Check if the input invitation is equal to yes. 
elif [ $invitation == 'yes' ]
then
    echo You have been invited to go to the party. 
else 
    echo You may not go to the party. 
fi 


# Basic logical operators 
# Operator         Operation
# &&                and
# ||                or 

# Check if the file provided as the second commandl line argument 
# is readable AND has a siza greater than zero 
if [ -x $2 ] && [ -s $2 ]
then 
    echo This file is useful. 
fi

# Prompt user for information and store the input information 
# into variable 
read -p 'Username: ' username 

# Check if username is bob OR andy 
if [ $username == 'bob' ] || [ $username == 'andy' ]
then 
    # List file names in current directory along with file details
    ls -l
else   
    ls
fi
