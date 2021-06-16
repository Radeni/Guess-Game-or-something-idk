#!/bin/bash

function guessHigherLower(){

if [ $1 -lt $2 ]
then
    echo "Higher"
else
    echo "Lower"
fi

};

smtn=$(ls | wc -l)
echo "How many files are in the repositorty? Input a number:"
read guess
while [ $smtn -ne $guess ]
do
    echo "Your guess was incorrect, try again!"
    guessHigherLower $smtn $guess
    read guess
done

echo "You guessed correctly!"