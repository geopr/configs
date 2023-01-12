#!/usr/bin/bash

current_layout="$(setxkbmap -query | grep layout | awk '{print $2}')";

case $current_layout in
	us) setxkbmap ru ;;
	ru) setxkbmap us ;;
	 *) setxkbmap us ;;
esac

xmodmap ~/.Xmodmap
