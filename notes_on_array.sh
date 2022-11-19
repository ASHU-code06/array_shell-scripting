 correct way 
#! /bin/bash -x

# direct assignment
user[0]="Ram"
user[1]="Vicky"
user[2]="Nickky"
user[3]="Maira"
echo ${user[2]}
# to print all elements of arrays
echo elements:${user[*]}
# to print all indexes of arrays
echo index:${!user[*]}
echo length:${#user[*]} #length of user array
# declare array explicit

declare -a fruits
counter=0

fruits[((counter++))]='apple'
fruits[((counter++))]='banana'
fruits[((counter++))]='grapes'
fruits[((counter++))]='mango'

echo fruits:${fruits[@]}
# compound assignment of array

servers=("prod" "dev" "stag" "alpha" "beta")

echo servers:${servers[*]}

# to access an specific element of array
index=2
echo index:${servers[$index]}