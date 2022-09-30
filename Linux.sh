#!/bin/bash

	# Get User Input
		# Get User Input
	read -n 1 -r -s -p $'Press Enter to Update or Q to Quit...\n' menuOption
	# Quit if Q is inputted
	if [[ $menuOption == "Q" ]]
	then
		echo "Thank You for using this Tool, Goodbye!"
		exit
		# If alphabetic characters are selected will display this error message and then go back to Menu
	elif [[ $menuOption =~ [a-zA-Z] ]] 
	then
		echo "Invalid Input, cannot Input Letters, please try again. "
		# If numeric characters are selected will display this error message and then go back to Menu
	elif [[ $menuOption =~ [0-9] ]] 
	then
		echo "Invalid Input, cannot Input Numbers, please try again. "
		# If special characters are selected will display this error message and then go back to Menu
	elif [[ $menuOption == *['!'@#\$%^\&*()_+]* ]] 
	then
		echo "Invalid Input, cannot Input Special Characters, please try again. "
			# If none of these input errors occur then update 			
	else	
        echo "Updating" | sudo -S sudo apt-get update > Linux.log
        echo "Upgrading" | sudo -S sudo apt-get -y upgrade >> Linux.log
        echo "Update Successful, Please Check Log. "
fi


