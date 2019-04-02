#!/bin/bash

datediff(){
	echo $(( ($2 - $1) / 86400 )) days
}

user=$(whoami)
echo "Greetings, $user!"

echo "Enter your birth day: "
read bday

echo "Enter your birth month: "
read bmonth

stringbday="$bmonth/$bday/2019"

datebday=$(date -d "$stringbday" +%s)

echo "date of bday is $datebday"

datetoday=$(date +%s)

echo "todays date is $datetoday"

datediff $datebday $datetoday
