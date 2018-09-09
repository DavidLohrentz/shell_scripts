#!/bin/bash

echo "rock"
sleep 0.4
echo "paper"
sleep 0.4
echo "scissors"
sleep 0.4

CRCOUNT=0
CPCOUNT=0
CSCOUNT=

read -p "Match Length: " MATCH_LENGTH
HUMAN_WINS=0
COMPUTER_WINS=0

while [ $HUMAN_WINS -lt $MATCH_LENGTH -a $COMPUTER_WINS -lt $MATCH_LENGTH ]
do

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


    if [ $COMPUTER == 1 ]; then
        COMPUTER_WORD="rock"
        let CRCOUNT++

    elif [ $COMPUTER == 2 ]; then
        COMPUTER_WORD="paper"
        let CPCOUNT++

    else
        COMPUTER_WORD="scissors"
        let CSCOUNT++
    fi


    if [ $HUMAN == $COMPUTER_WORD ]; then
        echo "Tie game. Shoot again."

    elif [ $HUMAN == "rock" -a  $COMPUTER_WORD == "scissors" ]; then
        let HUMAN_WINS++
        echo "Rock smashes scissors. Human: $HUMAN_WINS, Computer: $COMPUTER_WINS"

    elif [ $HUMAN == "scissors" -a  $COMPUTER_WORD == "paper" ]; then
        let HUMAN_WINS++
        echo "Scissors cuts paper. Human: $HUMAN_WINS, Computer: $COMPUTER_WINS"

    elif [ $HUMAN == "paper" -a  $COMPUTER_WORD == "rock" ]; then
        let HUMAN_WINS++
        echo "Paper covers rock. Human wins! Human: $HUMAN_WINS, Computer: $COMPUTER_WINS"

    else
        let COMPUTER_WINS++
        echo "Computer chose $COMPUTER_WORD. Human chose $HUMAN."
        echo "Computer: $COMPUTER_WINS, Human: $HUMAN_WINS"


    fi

done

echo "Computer choices
Rock: $CRCOUNT
Paper: $CPCOUNT
Scissors: $CSCOUNT"

if [ $COMPUTER_WINS -eq $MATCH_LENGTH ]; then
    echo "Computer wins the match!"

else
    echo "Human won the match, $HUMAN_WINS to $COMPUTER_WINS."

fi
