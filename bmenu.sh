#! /bin/bash
tput sc
tput civis

trap ctrl_c INT

function ctrl_c() {
  tput cnorm
  tput rc
  printf "\r\e[0;92mx \e[0m\e[1;77mGood Bye!                                                               \e[0m"
  echo
  exit
}

while getopts t:s:o:l: flag
do
    case "${flag}" in
        t) title=${OPTARG};;
        s) subtitle=${OPTARG};;
        o) option=${OPTARG};;
        l) linkfile=${OPTARG};;
    esac
done

source $linkfile


i=1;
for command in $option
do
    if [[ $i == 1 ]]; then
    option1=$command

    elif [[ $i == 2 ]]; then
    option2=$command

    elif [[ $i == 3 ]]; then
    option3=$command

    elif [[ $i == 4 ]]; then
    option4=$command

    elif [[ $i == 5 ]]; then
    option5=$command

    elif [[ $i == 6 ]]; then
    option6=$command

    elif [[ $i == 7 ]]; then
    option7=$command

    elif [[ $i == 8 ]]; then
    option8=$command

    elif [[ $i == 9 ]]; then
    option9=$command

    elif [[ $i == 10 ]]; then
    option10=$command
    fi
    i=$((i + 1));

done

selected=1
i=$((i - 1));

############################## TITLE

thetitle () {
  printf "\r\e[0;92m✓ \e[0m\e[1;77m$title\e[0;96m  $subtitle\e[0m"
}

############################## 1 OPTION
ifoption1 () {
while true
do
read -r -sn1 t
if [[ $t == A ]]; then 
selected=$(($selected - 1))
display1
elif [[ $t == B ]]; then 
selected=$(($selected + 1))
display1
elif [[ $t == "" ]]; then 
enter
fi
done
}

display1 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"

else
selected=1
fi
}

############################### 2 OPTIONS
display2 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r\e  $option2                                   "
tput sc
for i in {1..2}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
tput sc
for i in {1..2}
do 
tput cuu1
tput sc
done

else
selected=1
display2
fi
}

ifoption2 () {
while true
do
read -r -sn1 t
if [[ $t == A ]]; then 
selected=$(($selected - 1))
display2
elif [[ $t == B ]]; then 
selected=$(($selected + 1))
display2
elif [[ $t == "" ]]; then 
enter
fi
done
}


############################### 3 OPTIONS
display3 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "

tput sc
for i in {1..3}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r\e  $option3                                   "

tput sc
for i in {1..3}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"

tput sc
for i in {1..3}
do 
tput cuu1
tput sc
done

else
selected=1
display3
fi
}

ifoption3 () {
while true
do
read -r -sn1 t
if [[ $t == A ]]; then 
selected=$(($selected - 1))
display3
elif [[ $t == B ]]; then 
selected=$(($selected + 1))
display3
elif [[ $t == "" ]]; then 
enter
fi
done
}


############################### 4 OPTIONS
display4 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "

tput sc
for i in {1..4}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "

tput sc
for i in {1..4}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"
printf "\n\r\e  $option4                                   "

tput sc
for i in {1..4}
do 
tput cuu1
tput sc
done

elif [[ $selected == 4 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e[1;96m> $option4                             \e[0m"

tput sc
for i in {1..4}
do 
tput cuu1
tput sc
done

else
selected=1
display4
fi
}

ifoption4 () {
while true
do
read -r -sn1 t
if [[ $t == A ]]; then 
selected=$(($selected - 1))
display4
elif [[ $t == B ]]; then 
selected=$(($selected + 1))
display4
elif [[ $t == "" ]]; then 
enter
fi
done
}


############################### 5 OPTIONS
display5 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "

tput sc
for i in {1..5}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "

tput sc
for i in {1..5}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "

tput sc
for i in {1..5}
do 
tput cuu1
tput sc
done

elif [[ $selected == 4 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e[1;96m> $option4                             \e[0m"
printf "\n\r\e  $option5                                   "

tput sc
for i in {1..5}
do 
tput cuu1
tput sc
done

elif [[ $selected == 5 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e[1;96m> $option5                             \e[0m"

tput sc
for i in {1..5}
do 
tput cuu1
tput sc
done

else
selected=1
display5
fi
}

ifoption5 () {
while true
do
read -r -sn1 t
if [[ $t == A ]]; then 
selected=$(($selected - 1))
display5
elif [[ $t == B ]]; then 
selected=$(($selected + 1))
display5
elif [[ $t == "" ]]; then 
enter
fi
done
}


############################### 6 OPTIONS
display6 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "

tput sc
for i in {1..6}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "

tput sc
for i in {1..6}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "

tput sc
for i in {1..6}
do 
tput cuu1
tput sc
done

elif [[ $selected == 4 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e[1;96m> $option4                             \e[0m"
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "

tput sc
for i in {1..6}
do 
tput cuu1
tput sc
done

elif [[ $selected == 5 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e[1;96m> $option5                             \e[0m"
printf "\n\r\e  $option6                                   "

tput sc
for i in {1..6}
do 
tput cuu1
tput sc
done

elif [[ $selected == 6 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e[1;96m> $option6                             \e[0m"

tput sc
for i in {1..6}
do 
tput cuu1
tput sc
done

else
selected=1
display6
fi
}

ifoption6 () {
while true
do
read -r -sn1 t
if [[ $t == A ]]; then 
selected=$(($selected - 1))
display6
elif [[ $t == B ]]; then 
selected=$(($selected + 1))
display6
elif [[ $t == "" ]]; then 
enter
fi
done
}


############################### 7 OPTIONS
display7 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "

tput sc
for i in {1..7}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "

tput sc
for i in {1..7}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "

tput sc
for i in {1..7}
do 
tput cuu1
tput sc
done

elif [[ $selected == 4 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e[1;96m> $option4                             \e[0m"
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "

tput sc
for i in {1..7}
do 
tput cuu1
tput sc
done

elif [[ $selected == 5 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e[1;96m> $option5                             \e[0m"
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "

tput sc
for i in {1..7}
do 
tput cuu1
tput sc
done

elif [[ $selected == 6 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e[1;96m> $option6                             \e[0m"
printf "\n\r\e  $option7                                   "

tput sc
for i in {1..7}
do 
tput cuu1
tput sc
done

elif [[ $selected == 7 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e[1;96m> $option7                             \e[0m"

tput sc
for i in {1..7}
do 
tput cuu1
tput sc
done

else
selected=1
display7
fi
}

ifoption7 () {
while true
do
read -r -sn1 t
if [[ $t == A ]]; then 
selected=$(($selected - 1))
display7
elif [[ $t == B ]]; then 
selected=$(($selected + 1))
display7
elif [[ $t == "" ]]; then 
enter
fi
done
}


############################### 8 OPTIONS
display8 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "

tput sc
for i in {1..8}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "

tput sc
for i in {1..8}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "

tput sc
for i in {1..8}
do 
tput cuu1
tput sc
done

elif [[ $selected == 4 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e[1;96m> $option4                             \e[0m"
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "

tput sc
for i in {1..8}
do 
tput cuu1
tput sc
done

elif [[ $selected == 5 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e[1;96m> $option5                             \e[0m"
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "

tput sc
for i in {1..8}
do 
tput cuu1
tput sc
done

elif [[ $selected == 6 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e[1;96m> $option6                             \e[0m"
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "

tput sc
for i in {1..8}
do 
tput cuu1
tput sc
done

elif [[ $selected == 7 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e[1;96m> $option7                             \e[0m"
printf "\n\r\e  $option8                                   "

tput sc
for i in {1..8}
do 
tput cuu1
tput sc
done

elif [[ $selected == 8 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e[1;96m> $option8                             \e[0m"

tput sc
for i in {1..8}
do 
tput cuu1
tput sc
done

else
selected=1
display8
fi
}

ifoption8 () {
while true
do
read -r -sn1 t
if [[ $t == A ]]; then 
selected=$(($selected - 1))
display8
elif [[ $t == B ]]; then 
selected=$(($selected + 1))
display8
elif [[ $t == "" ]]; then 
enter
fi
done
}


############################### 9 OPTIONS
display9 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "
printf "\n\r\e  $option9                                   "

tput sc
for i in {1..9}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "
printf "\n\r\e  $option9                                   "

tput sc
for i in {1..9}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "
printf "\n\r\e  $option9                                   "

tput sc
for i in {1..9}
do 
tput cuu1
tput sc
done

elif [[ $selected == 4 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e[1;96m> $option4                             \e[0m"
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "
printf "\n\r\e  $option9                                   "

tput sc
for i in {1..9}
do 
tput cuu1
tput sc
done

elif [[ $selected == 5 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e[1;96m> $option5                             \e[0m"
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "
printf "\n\r\e  $option9                                   "

tput sc
for i in {1..9}
do 
tput cuu1
tput sc
done

elif [[ $selected == 6 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e[1;96m> $option6                             \e[0m"
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "
printf "\n\r\e  $option9                                   "

tput sc
for i in {1..9}
do 
tput cuu1
tput sc
done

elif [[ $selected == 7 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e[1;96m> $option7                             \e[0m"
printf "\n\r\e  $option8                                   "
printf "\n\r\e  $option9                                   "

tput sc
for i in {1..9}
do 
tput cuu1
tput sc
done

elif [[ $selected == 8 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e[1;96m> $option8                             \e[0m"
printf "\n\r\e  $option9                                   "

tput sc
for i in {1..9}
do 
tput cuu1
tput sc
done

elif [[ $selected == 9 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "
printf "\n\r\e[1;96m> $option9                             \e[0m"

tput sc
for i in {1..9}
do 
tput cuu1
tput sc
done

else
selected=1
display9
fi
}

ifoption9 () {
while true
do
read -r -sn1 t
if [[ $t == A ]]; then 
selected=$(($selected - 1))
display9
elif [[ $t == B ]]; then 
selected=$(($selected + 1))
display9
elif [[ $t == "" ]]; then 
enter
fi
done
}


############################### 10 OPTIONS
display10 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "
printf "\n\r\e  $option9                                   "
printf "\n\r\e  $option10                                   "

tput sc
for i in {1..10}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "
printf "\n\r\e  $option9                                   "
printf "\n\r\e  $option10                                   "

tput sc
for i in {1..10}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "
printf "\n\r\e  $option9                                   "
printf "\n\r\e  $option10                                   "

tput sc
for i in {1..10}
do 
tput cuu1
tput sc
done

elif [[ $selected == 4 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e[1;96m> $option4                             \e[0m"
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "
printf "\n\r\e  $option9                                   "
printf "\n\r\e  $option10                                   "

tput sc
for i in {1..10}
do 
tput cuu1
tput sc
done

elif [[ $selected == 5 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e[1;96m> $option5                             \e[0m"
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "
printf "\n\r\e  $option9                                   "
printf "\n\r\e  $option10                                   "

tput sc
for i in {1..10}
do 
tput cuu1
tput sc
done

elif [[ $selected == 6 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e[1;96m> $option6                             \e[0m"
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "
printf "\n\r\e  $option9                                   "
printf "\n\r\e  $option10                                   "

tput sc
for i in {1..10}
do 
tput cuu1
tput sc
done

elif [[ $selected == 7 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e[1;96m> $option7                             \e[0m"
printf "\n\r\e  $option8                                   "
printf "\n\r\e  $option9                                   "
printf "\n\r\e  $option10                                   "

tput sc
for i in {1..10}
do 
tput cuu1
tput sc
done

elif [[ $selected == 8 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e[1;96m> $option8                             \e[0m"
printf "\n\r\e  $option9                                   "
printf "\n\r\e  $option10                                   "

tput sc
for i in {1..10}
do 
tput cuu1
tput sc
done

elif [[ $selected == 9 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "
printf "\n\r\e[1;96m> $option9                             \e[0m"
printf "\n\r\e  $option10                                   "

tput sc
for i in {1..10}
do 
tput cuu1
tput sc
done

elif [[ $selected == 10 ]]; then 
tput rc
thetitle
printf "\n\r\e  $option1                                   "
printf "\n\r\e  $option2                                   "
printf "\n\r\e  $option3                                   "
printf "\n\r\e  $option4                                   "
printf "\n\r\e  $option5                                   "
printf "\n\r\e  $option6                                   "
printf "\n\r\e  $option7                                   "
printf "\n\r\e  $option8                                   "
printf "\n\r\e  $option9                                   "
printf "\n\r\e[1;96m> $option10                             \e[0m"

tput sc
for i in {1..10}
do 
tput cuu1
tput sc
done

else
selected=1
display10
fi
}

ifoption10 () {
while true
do
read -r -sn1 t
if [[ $t == A ]]; then 
selected=$(($selected - 1))
display10
elif [[ $t == B ]]; then 
selected=$(($selected + 1))
display10
elif [[ $t == "" ]]; then 
enter
fi
done
}



    if [[ $i == 1 ]]; then
    while true
    do
    display1
    ifoption1
    done

    elif [[ $i == 2 ]]; then
    while true
    do
    display2
    ifoption2
    done

    elif [[ $i == 3 ]]; then
    while true
    do
    display3
    ifoption3
    done

    elif [[ $i == 4 ]]; then
    while true
    do
    display4
    ifoption4
    done

    elif [[ $i == 5 ]]; then
    while true
    do
    display5
    ifoption5
    done

    elif [[ $i == 6 ]]; then
    while true
    do
    display6
    ifoption6
    done

    elif [[ $i == 7 ]]; then
    while true
    do
    display7
    ifoption7
    done

    elif [[ $i == 8 ]]; then
    while true
    do
    display8
    ifoption8
    done

    elif [[ $i == 9 ]]; then
    while true
    do
    display9
    ifoption9
    done

    elif [[ $i == 10 ]]; then
    while true
    do
    display10
    ifoption10
    done

    fi