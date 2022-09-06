#!/bin/bash

while true
do

	echo "
----------Oisin Aeonn's Subnetting Calculator----------

----------------Press Enter to Continue----------------

--------------------------OR---------------------------

--------------------Press Q to Quit--------------------
		"
	read -n 1 -r -s -p $'Press Enter to Continue...\n' menuOption

	if [[ $menuOption == "Q" ]]
	then
		echo "Thank You for using this Tool, Goodbye!"
		break
		
	elif [[ $menuOption =~ [a-zA-Z] ]] 
	then
		echo "Invalid Input, cannot Input Letters, please try again. "
		
	elif [[ $menuOption =~ [0-9] ]] 
	then
		echo "Invalid Input, cannot Input Numbers, please try again. "
		
	elif [[ $menuOption =~ $[] ]] 
	then
		echo "Invalid Input, cannot Input Special Characters, please try again. "
						
	else	
		read -p "Enter Number of required Subnets: " subNets
		
		if [[ $subNets =~ [a-zA-Z] ]] 
		then
			echo "Invalid Input, cannot Input Letters, please try again. "
		
		elif [[ $subNets =~ ^[^0-9a-zA-Z]+$ ]] 
		then
			echo "Invalid Input, cannot Input Special Characters, please try again. "
			
		elif [[ $subNets ]] && ! [ $subNets -eq $subNets 2>/dev/null ]  
		then
			echo "Invalid Input, cannot Input Floats, please try again. "
		
		elif [[ $subNets -lt 1 ]]
		then 
			echo "Subnets less than 1 are not possible. Please enter a Valid Input. "

		elif [[ $subNets -gt 64 ]]
		then
			echo "Subnets greater than 64 are not possible. Please enter a Valid Input. " 
		
		elif [ $subNets = 1 ]
		then
			echo 
"Bits Burrowed (last byte in SNM) = 0
Binary (last byte in SNM) = 0000 0000
Subnets = 1
Addresses per Subnet = 256
Hosts per Subnet = 254
Subnet Mask (255.255.255.xxx) = .0
Prefix = /24
"

		elif [ $subNets = 2 ]
		then
			echo 
"Bits Burrowed (last byte in SNM) = 1
Binary (last byte in SNM) = 1000 0000
Subnets = 2
Addresses per Subnet = 128
Hosts per Subnet = 126
Subnet Mask (255.255.255.xxx) = .128
Prefix = /25
"
		elif [[ $subNets == 3 || $subNets == 4 ]]
		then
			echo 
"Bits Burrowed (last byte in SNM) = 2
Binary (last byte in SNM) = 1100 0000
Subnets = 4
Addresses per Subnet = 64
Hosts per Subnet = 62
Subnet Mask (255.255.255.xxx) = .192
Prefix = /26
"

		elif [[ $subNets -ge 5 && $subNets -le 8 ]]
		then
			echo 
"Bits Burrowed (last byte in SNM) = 3
Binary (last byte in SNM) = 1110 0000
Subnets = 8
Addresses per Subnet = 32
Hosts per Subnet = 30
Subnet Mask (255.255.255.xxx) = .224
Prefix = /27
"

		elif [[ $subNets -ge 9 && $subNets -le 16 ]]
		then
			echo 
"Bits Burrowed (last byte in SNM) = 4
Binary (last byte in SNM) = 1111 0000
Subnets = 16
Addresses per Subnet = 16
Hosts per Subnet = 14
Subnet Mask (255.255.255.xxx) = .240
Prefix = /28
"

		elif [[ $subNets -ge 17 && $subNets -le 32 ]]
		then
			echo 
"Bits Burrowed (last byte in SNM) = 5
Binary (last byte in SNM) = 1111 1000
Subnets = 32
Addresses per Subnet = 8
Hosts per Subnet = 6
Subnet Mask (255.255.255.xxx) = .248
Prefix = /29
"

		elif [[ $subNets -ge 33 && $subNets -le 64 ]]
		then
			echo 
"Bits Burrowed (last byte in SNM) = 6
Binary (last byte in SNM) = 1111 1100
Subnets = 64
Addresses per Subnet = 8
Hosts per Subnet = 6
Subnet Mask (255.255.255.xxx) = .252
Prefix = /30
"
		fi	
	fi
done
