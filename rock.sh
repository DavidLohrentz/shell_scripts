#!/bin/bash

echo "rock"
sleep 0.5
echo "paper"
sleep 0.5
echo "scissors"
sleep 0.5

read -p "Make your selection: r/p/s: " HUMAN

if [ $HUMAN == "r" ]; then
    HUMAN="rock"

elif [ $HUMAN == "p" ]; then
    HUMAN="paper"

elif [ $HUMAN == "s" ]; then
    HUMAN="scissors"

else
    read -p "Make a valid selection, dumb ass: 'rock', 'paper', or 'scissors'" HUMAN

fi

echo "Human's Selection is $HUMAN"

COMPUTER=$((1 + RANDOM % 3))
echo "Computer's numeric selection is $COMPUTER"

if [ $COMPUTER == 1 ]; then
    COMPUTER_WORD="rock"

elif [ $COMPUTER == 2 ]; then
    COMPUTER_WORD="paper"

else
    COMPUTER_WORD="scissors"

fi
echo "Computer's converted selection is $COMPUTER_WORD"
