#!/bin/bash
# Guess the number game using shell scripting
clear
figlet -w 160 -k -f Slant Guess the Number Game -c | boxes -d stone -p a4t2b2
echo
echo -e "\t\t\t\t\t\t\t\e[103m You will only get \e[4m6 chances\e[24m to guess the \e[4mtwo digit
number\e[24m \e[0m\t "
echo
read -p "Enter your name : " name
system_number=$(( (RANDOM % 30) + 30))
echo
for no_of_chances in {1..6..1}
do
read -p "This is your chance no $no_of_chances of 6 chances , Guess the number : " number
if [ $number -eq $system_number ]
then
sleep 2
echo "Your guess is correct"
sleep 10
echo
clear
figlet -w 160 -f Bloody Congrats -c | lolcat
echo "==================================================== "
echo "Congrats !! $name"
echo "You have Guess the number in $no_of_chances chances "
echo "========================================================"
>> gamedetails.txt
echo "Player Name = $name" >> gamedetails.txt
echo "$name has taken $no_of_chances chances to complete the game" >>
gamedetails.txt
echo "========================================================"
>> gamedetails.txt
echo "" >> gamedetails.txt
break
else
sleep 2
echo "Your guess is wrong"
sleep 2
if [ $no_of_chances -eq 6 ]
then
sleep 6
clear
figlet -w 160 -f Bloody Sorry -c | lolcat
echo"==================================================== "
echo "Sorry !! $name"
echo "Better luck next time "
echo "You were not able to guess the number in given chances "
echo"========================================================"
>> gamedetails.txt
echo "Player Name = $name" >> gamedetails.txt
echo "$name was not able to guess the number " >> gamedetails.txt
echo"========================================================"
>> gamedetails.txt
echo "" >> gamedetails.txt
break
elif [ $number -gt $system_number ]
then
fi
done
echo
else
fi
echo "Please enter number LESSER than $number"
echo
echo "Please enter number GREATER than $number"
echo
echo "-----x----- Thank you -----x ----"
echo
echo "==================================================== "