#!/bin/bash
#
# gentle reminders via FUCKING POPUPS

# not portable. suck it
statusfile="$HOME/bin/task-reminder.sh/.task-reminder-status"

# init on first run or if status file decimated
if [ ! -e $statusfile ]; then
	echo "bug" > $statusfile
fi

# no args - here pop dat boi
if [ -z $1 ]; then

	catstats=$(cat $statusfile)

	# temp file says i want popups
	if [ $catstats == "bug" ]; then
		export DISPLAY=:0.0
		/usr/bin/notify-send "$(task minimal)" -t 3500 
	fi

#user intervention with ARGUMENT
else 
	#string to lower because i'm lazy
	dothisplease=$(echo $1 | tr '[:upper:]' '[:lower:]')

	if [ $dothisplease == "stop" ]; then
		echo "do-not-bug" > $statusfile
		echo "notifications stopped. don't get lazy!"

	elif [ $dothisplease == "start" ]; then
		echo "bug" > $statusfile
		echo "notifications started."
	else
		echo "----   task-reminder.sh   ----"
		echo ""
		echo "usage: "
		echo ""
		echo "\`task-reminder.sh\`        pops notification"
		echo "\`task-reminder.sh stop\`   stops popups"
		echo "\`task-reminder.sh start\`  starts popups"
	fi
fi