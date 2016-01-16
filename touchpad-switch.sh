#!/bin/bash          

TOUCHPAD_STATE=$(synclient -l | grep "TouchpadOff" | sed -e "s/^.*\(.\)$/\1/")
if [ "$TOUCHPAD_STATE" = 1 ]; then
	synclient TouchpadOff=0
else
	synclient TouchpadOff=1
fi

