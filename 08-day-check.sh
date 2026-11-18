#!/bin/bash

day=$(date +"%A")

if [ $day -e "Saturday" || $day -e "Sunday"];then
    echo "Weekend! Enjoy your holiday"
elif [ $day -e "Monday" ]
    echo "Start of the week, Let's go!"
else
    echo "Weekday. Go to school/work"
fi

# if [ $1  -e "Saturday" || $1 -e "Sunday"];then
#     echo "Weekend! Enjoy your holiday"
# elif [ $1 -e "Monday" ]
#     echo "Start of the week, Let's go!"
# else
#     echo "Weekday. Go to school/work"
# fi