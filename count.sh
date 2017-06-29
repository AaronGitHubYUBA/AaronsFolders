#This is a pop up where ethey insert their name
 echo "What is your name?"
read myName

#Checks for blanks
while [[ $myName == "" ]];
	do
	echo "Enter a Name"
	read myName
done

#No special characters
while [[ $myName =~ [^a-zA-Z]+ ]]
	do
	echo No special character, sorry.
	echo Re-enter name please:
	read myName
	done

#Checks for blanks
while [[ $myName == "" ]];
        do
        echo "Enter a Name"
        read myName
done

#Makes sure length is between 1 and 15
while [ ${#myName} -lt 1 ];
        do
        echo "Name must be between 1 and 15 characters"
	echo "Please Enter a name again"
        read myName
done

#Checks for blanks
while [[ $myName == "" ]];
        do
        echo "Enter a Name"
        read myName
done

#Makes sure length is between 1 and 15
while [ ${#myName} -gt 15 ];
        do
        echo "Name must be between 1 and 15 characters"
	echo "Please enter a name again"
        read myName
done

#No special characters
while [[ $myName =~ [^a-zA-Z]+ ]]
        do
        echo No special character, sorry.
        echo Re-enter name please:
        read myName
        done
        echo "Whats up, $myName!"

#Checks for blanks
while [[ $myName == "" ]];
        do
        echo "Enter a Name"
        read myName
done

#Number popup
echo "Type in a number between 5-100, please."
	read myNum
	echo "You typed in $myNum!"

#Checks for special characters
while [[ $myNum =~ [^0-9] ]]
do
  	echo "Sorry, numbers only bud ;("
  	echo “Enter a number:”
  	read myNum
done

#Number length
while [[ $myNum -lt 5 ]];
	do 
	echo "Number must be greater than 5"
	read myNum
done

while  [[ $myNum -gt 100 ]];
	do
	echo "Number must be less than 100"
	read myNum
done

counter=0
#Decides whether or not the counter starts at 1 or 0
if ! [[ $((myNum % 2)) == 0 ]];
	then
	counter=1
else
	counter=0
fi

while [[ $counter -le $myNum ]];
	do
	echo $counter
	let counter=$counter+2;
	sleep 0.2
done

echo "WE DONEEE"
