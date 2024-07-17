#!/bin/bash
 
read -p "Enter time in hh:mm format: " time
 
hour=${time:0:2}
minute=${time:3:2}

minute=$(($hour*60 + $minute))
 
if [ $minute -ge 0 ] && [ $minute -le 360 ];
then
    echo "Early Morning"
elif [ $minute -ge 361 ] && [ $minute -le 720 ];
then
    echo "Morning"
elif [ $minute -ge 721 ] && [ $minute -le 1080 ];
then
    echo "Afternoon"
elif [ $minute -ge 1081 ] && [ $minute -le 1439 ];
then
    echo "Late Night"
else
    echo "In Valid time"
fi