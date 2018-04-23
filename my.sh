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

#!/bin/bash
freespace=$(df -h / | grep -E "\/$" | awk '{print $4}')
greentxt="\033[32m"
bold="\033[1m"
normal="\033[0m"
logdate=$(date +"%Y%m%d")
logfile="$logdate"_report.log

echo -e $bold"Quick system report for "$greetext"$HOSTNAME"$normal
printf "\tSystem type:\t%s\n" $MACHTYPE
printf "\tBash Version:\t%s\n" $BASH_VERSION
printf "\tFree Space:\t%s\n" $freespace
printf "\tFiles in dir:\t%s\n" $(ls | wc -l)
printf "\tGenerated on:\t%s\n" $(date +"%m/%d/%y") # US date format
echo -e $greentext"A summary of this infor has been saved to $logfile"$normal

cat <<- EOF > $logfile
	This report was automatically generated by my Bash script. 
	It contains a brief summary of some system information. 
EOF

printf "SYS:\t%s\n" $MACHTYPE >> $logfile
printf "BASH:\t%s\n" $BASH_VERSION >> $logfile 


# if statements
#!/bin/bash
# This is a basic bash script. 

ifa=5
if [ $ ]; then
	echo $ifa is greater than 4!
else 
	echo $ifa is not greater than 4!
fi

ifb="This is a sring!"
if [[ $ifb =~ [0-9]+ ]]; then
        echo "This are numbers in the string: $ifb"
else
        echo "There are no numbers in the string: $ifb"
fi

#!/bin/bash
# This is a basic bash script. 
for i in 1 2 3 
do 
	echo $i
done 

#!/bin/bash
# This is a basic bash script. 
for i in {1..10} 
do 
        echo $i
done 

#!/bin/bash
# This is a basic bash script. 
arr=("apple" "banana" "cherry")
for i in ${arr[@]}
do
        echo $i
done

#!/bin/bash
# This is a basic bash script. 
declare ar
arr["name"]="Katherine"
arr["id"]="1234ThisIsID"
for i in "${!arr[@]}"   
do
        echo "$i: ${arr[$i]}"
done

#!/bin/bash
# This is a basic bash script
x="cat"
case $x in
	cat) echo "Feline";;
	dog|puppy) echo "Canine";;
	*) echo "No Match!";;
esac

#!/bin/bash
# This is a basic bash script
xx="bird"
case $xx in
        cat) echo "Feline";;
        dog|puppy) echo "Canine";;
        *) echo "No Match!";;
esac

#!/bin/bash
# This is a basic bash script
xxy="puppy"
case $xxy in
        cat) echo "Feline";;
        dog|puppy) echo "Canine";;
        *) echo "No Match!";;
esac

#!/bin/bash
# This is a basic bash script
function greet {
	echo "Hello, there!!"
}
echo "And now, a greeting!"
greet

#!/bin/bash
# This is a basic bash script
function greeting {
        echo "Hello, there $1!!" 
}
echo "And now, a greeting!"
greeting Katherineø

#!/bin/bash
# This is a basic bash script
function greeting2 {
        echo "Hello, there $1!! What a nice $2."
}
echo "And now, a greeting!"
greeting2 Katherine Morning
greeting2 Everybody Evening


function numberthings {
	i=1
	for f in $@; do
		echo $i: $f
		((i+=1))
	done
}

numberthings $(ls)

numberthings pine birch maple spruce


while getopts :u:p:ab option; do
	case $option in 
		u) user=$OPTARG;;
		p) pass=$OPTARG;;
		a) echo "Got the A flag";;
		b) echo "Got the B flag";;
		?) echo "I don't know what $OPTARG is!";;
	esac
done 

#echo "User: $user / Pass: $pass"


#echo "What is your name?" 
#read name

#echo "What is your password?"
#read -s pass

#read -p "What's your favorite animal? " animal

#echo name: $name, pass: $pass, animal: $animal 

#printf "\nSelect a number of the animal you'd like to have\n\n"
#select animal in "cat" "dog" "bird" "fish"
#do 
#	echo "You selected $animal!"
#	break
#done


#select option in "cat" "dog" "quit"
#do  
#	case $option in 
#		cat) echo "Cats like to sleep.";;
#		dog) echo "Dogs like to play catch.";;
#		quit) break;;
#		*) echo "I'm not sure what that is.";;
#	esac
#done


#!/bin/bash
# This is a basic bash script
if [ $# -lt 3 ]; then 
	cat <<- EOM
	This command requires three arguments:
	username, userid, and favorite number.
	EOM
else
	# the program goes here
	echo "Username: $1"
	echo "UserID: $2"
	echo "Favorite Number: $3"
fi


