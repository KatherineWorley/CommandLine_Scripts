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
