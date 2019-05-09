#!/bin/bash

# Create a google calendar event with gcalcli.
echo "Add an event to twesleyb10@gmail.com's calendar."

# Read user input.
read -p '-title:' usertitle
read -p '--where:' userwhere
read -p '--when (date):' userdate
read -p '--when (time):' usertime
#read -p '--who (email):' userwho
read -p '--duration:' userduration
read -p '--description:' userdescription
#read -p '--remind (yes/no):' userremind

# Pass user input to gcalcli.
gcalcli --calendar twesleyb10@gmail.com add \
	--title "'$usertitle'" \
	--where "'$userwhere'" \
	--when "'$userdate $usertime'" \
	--duration $userduration \
	--description "'$userdescription'" 

# END.
