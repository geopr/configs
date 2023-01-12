#!/usr/bin/bash

file="/home/geoprv/Documents/devices.txt"

declare -A pretty_output_hashmap=(
	# no idea why it does not match with Magic Keyboard
	["клавиатура Magic"]="Magic Keyboard"
)

while IFS="" read -r line; do
	# if falsy, default value $line will be assigned
	device="${pretty_output_hashmap[$line]:=$line}"

	# upower -d: devices list
	# grep -A: +15 lines after the matched line (-B before, -C before and after)
	# grep -E: extended regular expressions
	# grep -o: print only match, not the whole line
	percentage="$(upower -d | grep "$line" -A 15 | grep "percentage" | grep -Eo "[0-9]+%")"

	echo "$device: $percentage"
done < $file
