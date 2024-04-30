#! /bin/bash

# If you want to take input from the user, you use 
# the read commmand. This command takes the input and
# saves it into a variable.

# if you wan to output something to the terminal,
# you use the echo command.

# Display a prompt to the user 
echo Hello, who am I talk to?
# Read user input into a variable 
read varname 
#Display a message to the use that includes the 
# value stored in the variable 
echo It\'s nice to me you $varname

# You can alter the behavior of read with a variety of 
# command line options. 
# Two commonly used options are -p which allows you 
# to specify a prompt and -s which makes the input 
# silent. 
# This can make it easy to ask or a username and
# password combination.
read -p 'Username: ' username 
read -sp 'Password: ' password 
echo 
echo Thank you $username we now have you login details. 

# Display prompt to user. 
echo Enter filename 

# read user input 
read file

# If the file exists 
if [ -e $file ]
then
    # Display the file's name 
    echo $file exists in the directory 
    #Output the contents of the file. 
    cat $file 
# If the file doesn't exist
else 
    #Create the file. 
    cat > $file 
    # Display message 
    echo File created
fi


