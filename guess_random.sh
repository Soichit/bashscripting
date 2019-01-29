#! /usr/local/bin/bash

random=$RANDOM
answer=${random:0:1}

function game {
	read -p "Guess a number between 0 and 9 " guess
	while [[ $guess != $answer ]]; do
		read -p "Nope, try again. " guess
	done
	echo "yup, $guess is correct "
}

game
