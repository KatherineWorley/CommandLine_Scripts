#!/bin/bash
# This is a basic bash script.
greeting="hello"

echo $greeting, world \(planet\)!

#echo '$greeting, world (planet)!'
echo
echo
echo
#echo "$greeting, world (planet)!"

a=Hello
b="Good Morning"
c=16

echo $a
echo $b
echo $c

echo "$b! I have $c apples."

echo $BASH_VERSION
echo $MACHTYPE
echo $HOSTNAME
echo $SECONDS

d=$(pwd)
echo $d

e=$(ping -c 1 google.com | grep 'bytes from' | cut -d = -f 4)
echo "The ping was $e"

f=2
g=$((f+2))
echo $g
((g++))
echo $g
((g--))
echo $g
echo
((g+=5))
echo $g
((g*=3))
echo $g
((g/=3))
echo $g
((g-=5))
echo $g

h=$((1/3))
echo $h
i=$(echo 1/3 | bc -l)
echo $i

[[ "cat" == "cat" ]]
echo $?

[[ "cat" == "dog" ]]
echo $?

[[ 20 > 100 ]]
echo $?

[[ 20 -gt 100 ]]
echo $?

aa=""
bb="cat"
[[ -z $aa && -n $bb ]]
echo $?

cc="hello"
dd="world"
ee=$cc$dd
echo $ee

echo ${#cc}
echo ${#dd}

ff=${ee: -2}

flashred="\033[5;31;40m"
red="\033[31;40m"
none="\033[0m"

echo -e $flashred"ERROR: "$none$red"Something went wrong."$none

flashredd=$(tput setab 0; tput setaf 1; tput blink)
redd=$(tput setab 0; tput setaf 1)
nonee=$(tput sgr0)
printf "\n"
echo -e $flashredd"ERROR: "$nonee$redd"Something went wrong."$nonee
printf "\n"
date
printf "\n"
printf "Name:\t%s\nID:\t%04d\n" "Katherine" "13"
today=$(date +"%d-%m-%Y")
time=$(date +"%H:%M:%S")
printf "\n"
printf -v g "Current User: \t%s\nDate:\t\t%s @ %s\n" $USER $today $time
echo "$g"

aa=()
bb=("apple" "banana" "cherry")
echo ${bb[2]}
bb[5]="kiwi"
bb+=("mango")
echo ${bb[@]}

echo ${bb[@]: -1}

echo "Some Test" > file.txt
cat file.txt
echo "Even More Test" >> file.txt
cat file.txt

i=1
while read f; do
	echo "Line $i $f"
	((i++))
done < file.txt
printf "\n"
cat file.txt
printf "\n"
cat << EndOfText
This is a
multiline
text string
EndOfText
printf "\n"
cat <<- EndOfText
	This is a
	multiline 
	text string
EndOfText
printf "\n"



