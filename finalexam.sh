#! /bin/bash 

update_language () {
    counter=0
    update=$1
    add=$2
    
    while [ $counter -le 6 ]
    do
        if [ $2==${languages[counter]} ]
        then 
            languages[counter]=$1
            echo $2 has been updated to $1
            echo ${languages[@]}  
            break
        else    
            echo $1 does not exist in the list of programming language
            echo ${languages[@]}  
        fi
        ((counter++))
    done
}

add_languauge () {
    languages[$1]=$language_added
    echo $language_added has been added
    echo ${languages[@]}   
}

list_languages () {
    echo ${languages[@]}
}

languages=('C' 'C++' 'R' 'Bash' 'Go' 'Rust')

echo List or Programming Languages 
list_languages

read -p 'Would you like to update a language in the list'$'\n''or add a new language to the list (U or A): ' input
 
if [ $input == "U" ]
then
    read -p 'Language to be updated: ' language_update
    read -p 'New language to be used to update:' update_language
    update_language $update_language $language_update
elif [ $input == "A" ]
then
    read -p 'Language to be added: ' language_added
    length="${#languages[@]}"
    add_languauge $length 
     
else 
    echo 'Input must be U or A'
fi



