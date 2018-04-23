#!/bin/bash
# This is a basic bash script. 
read -p "Favorite animal? [cat] " a
while [[ -z "$a" ]]; do
	a="cat" 
done 
echo "$a was selected." 

#!/bin/bash
# This is a basic bash script.
read -p "What year? [nnnn] " a
while [[ ! $a =~ [0-9]{4} ]]; do
	read -p "A year, please! {nnnn} " a
done
echo "Selected year: $a" 

