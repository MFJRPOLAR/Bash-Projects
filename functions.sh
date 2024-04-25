#! /bin/bash 

# Functions may be created using two different formats: 

# function_name () {
#   <commands>
#}

# function function_name () {
#   <commands>
#}

# The function definition (the actual function itself) must
# appear in the script before any calls to the function. 

# Simple function 
print_something () {
    echo Hello 
}
print_something
print_something 

# Function that takes an arguement 
print_arguement () {
    # $1 is the arguement 
    echo Hello $1
}
print_arguement Mars
print_arguement Jupiter

# Function that returns a value 
return_something () {
    return 5 
}
return_something
# The $? contains the return value of the previosuly called function.
ret=$?
echo the previous function has a return value of $ret