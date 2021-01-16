#!/bin/bash

select choice in "Create Database" "List Databases" "Connect To Database" "Drop Database" "exit"
  do
	case $choice in 
		"Create Database")
			{
		       		echo please, enter the name of your database!
				read dbName
				mkdir databases/$dbName 
				echo database was created succesfully with name $dbName
		
			}
			;;
		"List Databases")
			{
				ls databases | wc -l
				ls databases
			}
			;;
		"Drop Database")
		       	{
				echo please, enter the name of the database
				read dbName
				rm -r databases/$dbName
			}
			;;
		"Connect To Database")
			{
				echo please, enter the name of the database to connect
				read dbName
				cd databases/$dbName

				select choice in "Create Table" "List Tables" "Drop Table" "Insert into Table" "Select From Table" "Delete From Table" "exit"
				 do
					case $choice in
						"Create Table")
							{
								echo C
							}
							;;
						"List Tables")
							{
								echo L
							}
							;;
						"Drop Table")
							{
								echo D
							}
							;;
						"Insert into Table")
							{
								echo I
							}
							;;
						"Select From Table")
							{
								echo S
							}
							;;
						"Delete From Table")
							{
								echo D
							}
							;;
						"exit") break 
							;;
						*) echo please, enter a number between 1 and 7
							;;
				esac
				done

				cd ../../
			}
			;;	
		"exit") break
			;;	
		*) echo please enter a number between 1 and 5
			;;
	esac
  done