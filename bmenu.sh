#! /bin/bash
##############################################################################################
##############################################################################################
####### Created By @HadrienAka ####### Created By @HadrienAka ####### Created By @HadrienAka #
##############################################################################################
##############################################################################################
###
###              
###########################################################
###              
### Look, I spent more than 72 hours on this code.
### I have no idea how it works, but it does works.
### If ANYTHING happens to it, YOU will be the one
### who will spend the next many hours trying to fix it.
###              
###########################################################
###              
###              

############################################ EXIT IF NO ARGUMENTS

empty () {
printf "\n\e[0;91mx \e[0m\e[1;77mAdd arguments. \e[0;96m [type \"bmenu --help\" to get help]\e[0m"
printf "\n"
echo
exit 0
}
[ -z "$1" ] && empty

############################################# TRAP CTRL C

trap ctrl_c INT

function ctrl_c() {
  tput cnorm
  tput rc
  printf "\r\e[0;91mx \e[0m\e[1;77mGood Bye!                                                               \e[0m"
  echo
  exit
}

############################################# FONCTION -d

d=0

############################################# ARGUMENTS

while test $# -gt 0; do
  case "$1" in

    -h|--help)
     printf "\n"
  printf "\e[0;92m✓ \e[0m\e[1;77mThe Bash Menu\e[0;96m [By @HadrienAka]\e[0m"
  printf "\n"
  printf "\n"
  printf "\n\e[1;77mArguments :\e[0m"
  printf "\n\e[1;92m-h, --help            \e[0m\e[1;77mShow brief help\e[0m"
  printf "\n\e[1;92m-t, --title           \e[0m\e[1;77mEdit the title\e[0m"
  printf "\n\e[1;92m-s, --subtitle        \e[0m\e[1;77mEdit the subtitle\e[0m"
  printf "\n\e[1;92m-o, --option          \e[0m\e[1;77mEdit all the options (Put a comma between them)\e[0m"
  printf "\n\e[1;92m-l, --link            \e[0m\e[1;77mLink another command file\e[0m"
  printf "\n\e[1;92m-a, --alternative     \e[0m\e[1;77mDisplay an alternative menu (Put -a at the end of the command)\e[0m"
  printf "\n"
  printf "\n\e[0;92m? \e[0m\e[1;77mMore information\e[0;96m on the github page.\e[0m"
  printf "\n\e[0;92m? \e[0m\e[1;77mDo you want to open it?\e[0;96m [y/n]\e[0m"
  read -n1 yn
  if [[ $yn == y ]]; then
    open https://github.com/hadrienaka/TheBashMenu
    echo
  elif [[ $yn == "n" ]]; then
    :
  fi
  echo
      exit 0
      ;;
      
    -t|--title)
      shift
      if test $# -gt 0; then
        export title=$1
      else
        printf "\n\e[0;91mx \e[0m\e[1;77mError: No Title\e[0m"
        exit 0
      fi
      shift
      ;;

    -s|--subtitle)
      shift
      if test $# -gt 0; then
        export subtitle=$1
      else
        printf "\n\e[0;91mx \e[0m\e[1;77mError: No Subtitle\e[0m"
        exit 0
      fi
      shift
      ;;

    -o|--option)
      shift
      if test $# -gt 0; then
        export option=$1
      else
        printf "\n\e[0;91mx \e[0m\e[1;77mError: No Option\e[0m"
    exit 0
      fi
      shift
      ;;

    -l|--link)
      shift
      if test $# -gt 0; then
        export linkfile=$1
      else
        printf "\n\e[0;91mx \e[0m\e[1;77mError: No Link\e[0m"
        exit 0
      fi
      shift
      ;;

    -a|--alternative)
      shift
        d=1
      shift
      ;;
    *)
      break
      ;;
  esac
done


################################################## CHECK IF -l & LINKFILE EXIST

if [ -z "$linkfile" ]
then
  type enter &>/dev/null && : || printf "\e[0;91mx \e[0m\e[1;77menter() not find !\e[0m\n"
else
  source $linkfile &>/dev/null
  type enter &>/dev/null && : || printf "\e[0;91mx \e[0m\e[1;77menter() not find !\e[0m\n"

fi

################################################## SAVE CURSOR POSITION AND DELETE IT

tput sc
tput civis

################################################## REPLACE COMMA TO SPACE

option=$( echo $option | tr \   / )
option=$( echo $option | tr ,  \  )

####################################################### GIVE OPTIONS VAR TO $COMMAND

i=1;
for command in $option
do
    if [[ $i == 1 ]]; then
    option1=$command
    option1=$( echo $option1 | tr /  \  )

    elif [[ $i == 2 ]]; then
    option2=$command
    option2=$( echo $option2 | tr /  \  )

    elif [[ $i == 3 ]]; then
    option3=$command
    option3=$( echo $option3 | tr /  \  )

    elif [[ $i == 4 ]]; then
    option4=$command
    option4=$( echo $option4 | tr /  \  )

    elif [[ $i == 5 ]]; then
    option5=$command
    option5=$( echo $option5 | tr /  \  )

    elif [[ $i == 6 ]]; then
    option6=$command
    option6=$( echo $option6 | tr /  \  )

    elif [[ $i == 7 ]]; then
    option7=$command
    option7=$( echo $option7 | tr /  \  )

    elif [[ $i == 8 ]]; then
    option8=$command
    option8=$( echo $option8 | tr /  \  )

    elif [[ $i == 9 ]]; then
    option9=$command
    option9=$( echo $option9 | tr /  \  )

    elif [[ $i == 10 ]]; then
    option10=$command
    option10=$( echo $option10 | tr /  \  )

    elif [[ $i == 11 ]]; then
    option11=$command
    option11=$( echo $option11 | tr /  \  )

    elif [[ $i == 12 ]]; then
    option12=$command
    option12=$( echo $option12 | tr /  \  )

    elif [[ $i == 13 ]]; then
    option13=$command
    option13=$( echo $option13 | tr /  \  )

    elif [[ $i == 14 ]]; then
    option14=$command
    option14=$( echo $option14 | tr /  \  )

    elif [[ $i == 15 ]]; then
    option15=$command
    option15=$( echo $option15 | tr /  \  )

    fi

    i=$((i + 1));

done

################# INIT SELECTED & VAR

selected=1
i=$((i - 1));

####################################################################
########################## BEFORE ENTER ############################
####################################################################

enterbis () {
testenter=0
printf "\r                                                                            "
while (( $testenter != $i ))
do
testenter=$((testenter + 1));
printf "\n\r                                                                             "
done
tput rc
tput sc
tput cnorm
}

####################################################################
############################## TITLE ###############################
####################################################################

thetitle () {
  printf "\r\e[0;92m✓ \e[0m\e[1;77m$title\e[0;96m  $subtitle\e[0m"
}





####################################################################
####################################################################
##############               OPTION PART               #############
##############    Don't read it, it's boring ..        #############
####################################################################
####################################################################



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
enterbis ; enter
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
printf "\n\r  $option2                                   "
tput sc
for i in {1..2}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
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
enterbis ; enter
fi
done
}


############################### 3 OPTIONS
display3 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "

tput sc
for i in {1..3}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r  $option3                                   "

tput sc
for i in {1..3}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
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
enterbis ; enter
fi
done
}


############################### 4 OPTIONS
display4 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "

tput sc
for i in {1..4}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "

tput sc
for i in {1..4}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"
printf "\n\r  $option4                                   "

tput sc
for i in {1..4}
do 
tput cuu1
tput sc
done

elif [[ $selected == 4 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
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
enterbis
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
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "

tput sc
for i in {1..5}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "

tput sc
for i in {1..5}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "

tput sc
for i in {1..5}
do 
tput cuu1
tput sc
done

elif [[ $selected == 4 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r\e[1;96m> $option4                             \e[0m"
printf "\n\r  $option5                                   "

tput sc
for i in {1..5}
do 
tput cuu1
tput sc
done

elif [[ $selected == 5 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
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
enterbis ; enter
fi
done
}


############################### 6 OPTIONS
display6 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "

tput sc
for i in {1..6}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "

tput sc
for i in {1..6}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "

tput sc
for i in {1..6}
do 
tput cuu1
tput sc
done

elif [[ $selected == 4 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r\e[1;96m> $option4                             \e[0m"
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "

tput sc
for i in {1..6}
do 
tput cuu1
tput sc
done

elif [[ $selected == 5 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r\e[1;96m> $option5                             \e[0m"
printf "\n\r  $option6                                   "

tput sc
for i in {1..6}
do 
tput cuu1
tput sc
done

elif [[ $selected == 6 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
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
enterbis ; enter
fi
done
}


############################### 7 OPTIONS
display7 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "

tput sc
for i in {1..7}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "

tput sc
for i in {1..7}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "

tput sc
for i in {1..7}
do 
tput cuu1
tput sc
done

elif [[ $selected == 4 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r\e[1;96m> $option4                             \e[0m"
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "

tput sc
for i in {1..7}
do 
tput cuu1
tput sc
done

elif [[ $selected == 5 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r\e[1;96m> $option5                             \e[0m"
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "

tput sc
for i in {1..7}
do 
tput cuu1
tput sc
done

elif [[ $selected == 6 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r\e[1;96m> $option6                             \e[0m"
printf "\n\r  $option7                                   "

tput sc
for i in {1..7}
do 
tput cuu1
tput sc
done

elif [[ $selected == 7 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
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
enterbis ; enter
fi
done
}


############################### 8 OPTIONS
display8 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "

tput sc
for i in {1..8}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "

tput sc
for i in {1..8}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "

tput sc
for i in {1..8}
do 
tput cuu1
tput sc
done

elif [[ $selected == 4 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r\e[1;96m> $option4                             \e[0m"
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "

tput sc
for i in {1..8}
do 
tput cuu1
tput sc
done

elif [[ $selected == 5 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r\e[1;96m> $option5                             \e[0m"
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "

tput sc
for i in {1..8}
do 
tput cuu1
tput sc
done

elif [[ $selected == 6 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r\e[1;96m> $option6                             \e[0m"
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "

tput sc
for i in {1..8}
do 
tput cuu1
tput sc
done

elif [[ $selected == 7 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r\e[1;96m> $option7                             \e[0m"
printf "\n\r  $option8                                   "

tput sc
for i in {1..8}
do 
tput cuu1
tput sc
done

elif [[ $selected == 8 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
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
enterbis ; enter
fi
done
}


############################### 9 OPTIONS
display9 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "

tput sc
for i in {1..9}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "

tput sc
for i in {1..9}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "

tput sc
for i in {1..9}
do 
tput cuu1
tput sc
done

elif [[ $selected == 4 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r\e[1;96m> $option4                             \e[0m"
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "

tput sc
for i in {1..9}
do 
tput cuu1
tput sc
done

elif [[ $selected == 5 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r\e[1;96m> $option5                             \e[0m"
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "

tput sc
for i in {1..9}
do 
tput cuu1
tput sc
done

elif [[ $selected == 6 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r\e[1;96m> $option6                             \e[0m"
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "

tput sc
for i in {1..9}
do 
tput cuu1
tput sc
done

elif [[ $selected == 7 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r\e[1;96m> $option7                             \e[0m"
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "

tput sc
for i in {1..9}
do 
tput cuu1
tput sc
done

elif [[ $selected == 8 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r\e[1;96m> $option8                             \e[0m"
printf "\n\r  $option9                                   "

tput sc
for i in {1..9}
do 
tput cuu1
tput sc
done

elif [[ $selected == 9 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
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
enterbis ; enter
fi
done
}


############################### 10 OPTIONS
display10 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "

tput sc
for i in {1..10}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "

tput sc
for i in {1..10}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "

tput sc
for i in {1..10}
do 
tput cuu1
tput sc
done

elif [[ $selected == 4 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r\e[1;96m> $option4                             \e[0m"
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "

tput sc
for i in {1..10}
do 
tput cuu1
tput sc
done

elif [[ $selected == 5 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r\e[1;96m> $option5                             \e[0m"
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "

tput sc
for i in {1..10}
do 
tput cuu1
tput sc
done

elif [[ $selected == 6 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r\e[1;96m> $option6                             \e[0m"
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "

tput sc
for i in {1..10}
do 
tput cuu1
tput sc
done

elif [[ $selected == 7 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r\e[1;96m> $option7                             \e[0m"
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "

tput sc
for i in {1..10}
do 
tput cuu1
tput sc
done

elif [[ $selected == 8 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r\e[1;96m> $option8                             \e[0m"
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "

tput sc
for i in {1..10}
do 
tput cuu1
tput sc
done

elif [[ $selected == 9 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r\e[1;96m> $option9                             \e[0m"
printf "\n\r  $option10                                   "

tput sc
for i in {1..10}
do 
tput cuu1
tput sc
done

elif [[ $selected == 10 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
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
enterbis ; enter
fi
done
}



############################### 11 OPTIONS
display11 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "

tput sc
for i in {1..11}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "

tput sc
for i in {1..11}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "

tput sc
for i in {1..11}
do 
tput cuu1
tput sc
done

elif [[ $selected == 4 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r\e[1;96m> $option4                             \e[0m"
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "

tput sc
for i in {1..11}
do 
tput cuu1
tput sc
done

elif [[ $selected == 5 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r\e[1;96m> $option5                             \e[0m"
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "

tput sc
for i in {1..11}
do 
tput cuu1
tput sc
done

elif [[ $selected == 6 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r\e[1;96m> $option6                             \e[0m"
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "

tput sc
for i in {1..11}
do 
tput cuu1
tput sc
done

elif [[ $selected == 7 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r\e[1;96m> $option7                             \e[0m"
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "

tput sc
for i in {1..11}
do 
tput cuu1
tput sc
done

elif [[ $selected == 8 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r\e[1;96m> $option8                             \e[0m"
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "

tput sc
for i in {1..11}
do 
tput cuu1
tput sc
done

elif [[ $selected == 9 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r\e[1;96m> $option9                             \e[0m"
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "

tput sc
for i in {1..11}
do 
tput cuu1
tput sc
done

elif [[ $selected == 10 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r\e[1;96m> $option10                             \e[0m"
printf "\n\r  $option11                                   "

tput sc
for i in {1..11}
do 
tput cuu1
tput sc
done

elif [[ $selected == 11 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r\e[1;96m> $option11                             \e[0m"

tput sc
for i in {1..11}
do 
tput cuu1
tput sc
done

else
selected=1
display11
fi
}

ifoption11 () {
while true
do
read -r -sn1 t
if [[ $t == A ]]; then 
selected=$(($selected - 1))
display11
elif [[ $t == B ]]; then 
selected=$(($selected + 1))
display11
elif [[ $t == "" ]]; then 
enterbis ; enter
fi
done
}






############################### 12 OPTIONS
display12 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "

tput sc
for i in {1..12}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "

tput sc
for i in {1..12}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "

tput sc
for i in {1..12}
do 
tput cuu1
tput sc
done

elif [[ $selected == 4 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r\e[1;96m> $option4                             \e[0m"
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "

tput sc
for i in {1..12}
do 
tput cuu1
tput sc
done

elif [[ $selected == 5 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r\e[1;96m> $option5                             \e[0m"
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "

tput sc
for i in {1..12}
do 
tput cuu1
tput sc
done

elif [[ $selected == 6 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r\e[1;96m> $option6                             \e[0m"
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "

tput sc
for i in {1..12}
do 
tput cuu1
tput sc
done

elif [[ $selected == 7 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r\e[1;96m> $option7                             \e[0m"
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "

tput sc
for i in {1..12}
do 
tput cuu1
tput sc
done

elif [[ $selected == 8 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r\e[1;96m> $option8                             \e[0m"
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "

tput sc
for i in {1..12}
do 
tput cuu1
tput sc
done

elif [[ $selected == 9 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r\e[1;96m> $option9                             \e[0m"
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "

tput sc
for i in {1..12}
do 
tput cuu1
tput sc
done

elif [[ $selected == 10 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r\e[1;96m> $option10                             \e[0m"
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "

tput sc
for i in {1..12}
do 
tput cuu1
tput sc
done

elif [[ $selected == 11 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r\e[1;96m> $option11                             \e[0m"
printf "\n\r  $option12                                   "

tput sc
for i in {1..12}
do 
tput cuu1
tput sc
done

elif [[ $selected == 12 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r\e[1;96m> $option12                             \e[0m"

tput sc
for i in {1..12}
do 
tput cuu1
tput sc
done


else
selected=1
display12
fi
}

ifoption12 () {
while true
do
read -r -sn1 t
if [[ $t == A ]]; then 
selected=$(($selected - 1))
display12
elif [[ $t == B ]]; then 
selected=$(($selected + 1))
display12
elif [[ $t == "" ]]; then 
enterbis ; enter
fi
done
}



############################### 13 OPTIONS
display13 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "

tput sc
for i in {1..13}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "

tput sc
for i in {1..13}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "

tput sc
for i in {1..13}
do 
tput cuu1
tput sc
done

elif [[ $selected == 4 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r\e[1;96m> $option4                             \e[0m"
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "

tput sc
for i in {1..13}
do 
tput cuu1
tput sc
done

elif [[ $selected == 5 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r\e[1;96m> $option5                             \e[0m"
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "

tput sc
for i in {1..13}
do 
tput cuu1
tput sc
done

elif [[ $selected == 6 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r\e[1;96m> $option6                             \e[0m"
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "

tput sc
for i in {1..13}
do 
tput cuu1
tput sc
done

elif [[ $selected == 7 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r\e[1;96m> $option7                             \e[0m"
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "

tput sc
for i in {1..13}
do 
tput cuu1
tput sc
done

elif [[ $selected == 8 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r\e[1;96m> $option8                             \e[0m"
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "

tput sc
for i in {1..13}
do 
tput cuu1
tput sc
done

elif [[ $selected == 9 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r\e[1;96m> $option9                             \e[0m"
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "

tput sc
for i in {1..13}
do 
tput cuu1
tput sc
done

elif [[ $selected == 10 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r\e[1;96m> $option10                             \e[0m"
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "

tput sc
for i in {1..13}
do 
tput cuu1
tput sc
done

elif [[ $selected == 11 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r\e[1;96m> $option11                             \e[0m"
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "

tput sc
for i in {1..13}
do 
tput cuu1
tput sc
done

elif [[ $selected == 12 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r\e[1;96m> $option12                             \e[0m"
printf "\n\r  $option13                                   "

tput sc
for i in {1..13}
do 
tput cuu1
tput sc
done

elif [[ $selected == 13 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r\e[1;96m> $option13                             \e[0m"

tput sc
for i in {1..13}
do 
tput cuu1
tput sc
done




else
selected=1
display12
fi
}

ifoption13 () {
while true
do
read -r -sn1 t
if [[ $t == A ]]; then 
selected=$(($selected - 1))
display13
elif [[ $t == B ]]; then 
selected=$(($selected + 1))
display13
elif [[ $t == "" ]]; then 
enterbis ; enter
fi
done
}



############################### 14 OPTIONS
display14 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "

tput sc
for i in {1..14}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "

tput sc
for i in {1..14}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "

tput sc
for i in {1..14}
do 
tput cuu1
tput sc
done

elif [[ $selected == 4 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r\e[1;96m> $option4                             \e[0m"
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "

tput sc
for i in {1..14}
do 
tput cuu1
tput sc
done

elif [[ $selected == 5 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r\e[1;96m> $option5                             \e[0m"
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "

tput sc
for i in {1..14}
do 
tput cuu1
tput sc
done

elif [[ $selected == 6 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r\e[1;96m> $option6                             \e[0m"
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "

tput sc
for i in {1..14}
do 
tput cuu1
tput sc
done

elif [[ $selected == 7 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r\e[1;96m> $option7                             \e[0m"
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "

tput sc
for i in {1..14}
do 
tput cuu1
tput sc
done

elif [[ $selected == 8 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r\e[1;96m> $option8                             \e[0m"
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "

tput sc
for i in {1..14}
do 
tput cuu1
tput sc
done

elif [[ $selected == 9 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r\e[1;96m> $option9                             \e[0m"
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "

tput sc
for i in {1..14}
do 
tput cuu1
tput sc
done

elif [[ $selected == 10 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r\e[1;96m> $option10                             \e[0m"
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "

tput sc
for i in {1..14}
do 
tput cuu1
tput sc
done

elif [[ $selected == 11 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r\e[1;96m> $option11                             \e[0m"
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "

tput sc
for i in {1..14}
do 
tput cuu1
tput sc
done

elif [[ $selected == 12 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r\e[1;96m> $option12                             \e[0m"
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "

tput sc
for i in {1..14}
do 
tput cuu1
tput sc
done

elif [[ $selected == 13 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r\e[1;96m> $option13                             \e[0m"
printf "\n\r  $option14                                   "

tput sc
for i in {1..14}
do 
tput cuu1
tput sc
done

elif [[ $selected == 14 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r\e[1;96m> $option14                             \e[0m"

tput sc
for i in {1..14}
do 
tput cuu1
tput sc
done


else
selected=1
display14
fi
}

ifoption14 () {
while true
do
read -r -sn1 t
if [[ $t == A ]]; then 
selected=$(($selected - 1))
display14
elif [[ $t == B ]]; then 
selected=$(($selected + 1))
display14
elif [[ $t == "" ]]; then 
enterbis ; enter
fi
done
}






############################### 15 OPTIONS
display15 () {
if [[ $selected == 1 ]]; then 
tput rc
thetitle
printf "\n\r\e[1;96m> $option1                             \e[0m"
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "
printf "\n\r  $option15                                   "

tput sc
for i in {1..15}
do 
tput cuu1
tput sc
done

elif [[ $selected == 2 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r\e[1;96m> $option2                             \e[0m"
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "
printf "\n\r  $option15                                   "

tput sc
for i in {1..15}
do 
tput cuu1
tput sc
done

elif [[ $selected == 3 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r\e[1;96m> $option3                             \e[0m"
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "
printf "\n\r  $option15                                   "

tput sc
for i in {1..15}
do 
tput cuu1
tput sc
done

elif [[ $selected == 4 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r\e[1;96m> $option4                             \e[0m"
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "
printf "\n\r  $option15                                   "

tput sc
for i in {1..15}
do 
tput cuu1
tput sc
done

elif [[ $selected == 5 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r\e[1;96m> $option5                             \e[0m"
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "
printf "\n\r  $option15                                   "

tput sc
for i in {1..15}
do 
tput cuu1
tput sc
done

elif [[ $selected == 6 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r\e[1;96m> $option6                             \e[0m"
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "
printf "\n\r  $option15                                   "

tput sc
for i in {1..15}
do 
tput cuu1
tput sc
done

elif [[ $selected == 7 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r\e[1;96m> $option7                             \e[0m"
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "
printf "\n\r  $option15                                   "

tput sc
for i in {1..15}
do 
tput cuu1
tput sc
done

elif [[ $selected == 8 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r\e[1;96m> $option8                             \e[0m"
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "
printf "\n\r  $option15                                   "

tput sc
for i in {1..15}
do 
tput cuu1
tput sc
done

elif [[ $selected == 9 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r\e[1;96m> $option9                             \e[0m"
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "
printf "\n\r  $option15                                   "

tput sc
for i in {1..15}
do 
tput cuu1
tput sc
done

elif [[ $selected == 10 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r\e[1;96m> $option10                             \e[0m"
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "
printf "\n\r  $option15                                   "

tput sc
for i in {1..15}
do 
tput cuu1
tput sc
done

elif [[ $selected == 11 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r\e[1;96m> $option11                             \e[0m"
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "
printf "\n\r  $option15                                   "

tput sc
for i in {1..15}
do 
tput cuu1
tput sc
done

elif [[ $selected == 12 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r\e[1;96m> $option12                             \e[0m"
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "
printf "\n\r  $option15                                   "

tput sc
for i in {1..15}
do 
tput cuu1
tput sc
done

elif [[ $selected == 13 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r\e[1;96m> $option13                             \e[0m"
printf "\n\r  $option14                                   "
printf "\n\r  $option15                                   "

tput sc
for i in {1..15}
do 
tput cuu1
tput sc
done

elif [[ $selected == 14 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r\e[1;96m> $option14                             \e[0m"
printf "\n\r  $option15                                   "

tput sc
for i in {1..15}
do 
tput cuu1
tput sc
done

elif [[ $selected == 15 ]]; then 
tput rc
thetitle
printf "\n\r  $option1                                   "
printf "\n\r  $option2                                   "
printf "\n\r  $option3                                   "
printf "\n\r  $option4                                   "
printf "\n\r  $option5                                   "
printf "\n\r  $option6                                   "
printf "\n\r  $option7                                   "
printf "\n\r  $option8                                   "
printf "\n\r  $option9                                   "
printf "\n\r  $option10                                   "
printf "\n\r  $option11                                   "
printf "\n\r  $option12                                   "
printf "\n\r  $option13                                   "
printf "\n\r  $option14                                   "
printf "\n\r\e[1;96m> $option15                             \e[0m"

tput sc
for i in {1..15}
do 
tput cuu1
tput sc
done

else
selected=1
display15
fi
}

ifoption15 () {
while true
do
read -r -sn1 t
if [[ $t == A ]]; then 
selected=$(($selected - 1))
display15
elif [[ $t == B ]]; then 
selected=$(($selected + 1))
display15
elif [[ $t == "" ]]; then 
enterbis ; enter
fi
done
}

defaultmenu ()
{
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

    elif [[ $i == 11 ]]; then
    while true
    do
    display11
    ifoption11
    done

    elif [[ $i == 12 ]]; then
    while true
    do
    display12
    ifoption12
    done

    elif [[ $i == 13 ]]; then
    while true
    do
    display13
    ifoption13
    done

    elif [[ $i == 14 ]]; then
    while true
    do
    display14
    ifoption14
    done

    elif [[ $i == 15 ]]; then
    while true
    do
    display15
    ifoption15
    done

    fi
}

othermenu ()
{
  thetitle
  printf "\n"
  if [[ $i -gt 1 ]] || [[ $i = 1 ]]; then
  printf "\n\e[0;96m-1 \e[0m\e[0;77m$option1\e[0m"
  fi
  if [[ $i -gt 2 ]] || [[ $i = 2 ]]; then
  printf "\n\e[0;96m-2 \e[0m\e[0;77m$option2\e[0m"
  fi
  if [[ $i -gt 3 ]] || [[ $i = 3 ]]; then
  printf "\n\e[0;96m-3 \e[0m\e[0;77m$option3\e[0m"
  fi
  if [[ $i -gt 4 ]] || [[ $i = 4 ]]; then
  printf "\n\e[0;96m-4 \e[0m\e[0;77m$option4\e[0m"
  fi
  if [[ $i -gt 5 ]] || [[ $i = 5 ]]; then
  printf "\n\e[0;96m-5 \e[0m\e[0;77m$option5\e[0m"
  fi
  if [[ $i -gt 6 ]] || [[ $i = 6 ]]; then
  printf "\n\e[0;96m-6 \e[0m\e[0;77m$option6\e[0m"
  fi
  if [[ $i -gt 7 ]] || [[ $i = 7 ]]; then
  printf "\n\e[0;96m-7 \e[0m\e[0;77m$option7\e[0m"
  fi
  if [[ $i -gt 8 ]] || [[ $i = 8 ]]; then
  printf "\n\e[0;96m-8 \e[0m\e[0;77m$option8\e[0m"
  fi
  if [[ $i -gt 9 ]] || [[ $i = 9 ]]; then
  printf "\n\e[0;96m-9 \e[0m\e[0;77m$option9\e[0m"
  fi
  if [[ "$i" -gt "10" ]] || [ "$i" == "10" ]; then
  printf "\n\e[0;96m-10 \e[0m\e[0;77m$option10\e[0m"
  fi
  if [[ "$i" -gt "11" ]] || [ "$i" == "11" ]; then
  printf "\n\e[0;96m-11 \e[0m\e[0;77m$option11\e[0m"
  fi
  if [[ "$i" -gt "12" ]] || [ "$i" == "12" ]; then
  printf "\n\e[0;96m-12 \e[0m\e[0;77m$option12\e[0m"
  fi
  if [[ "$i" -gt "13" ]] || [ "$i" == "13" ]; then
  printf "\n\e[0;96m-13 \e[0m\e[0;77m$option13\e[0m"
  fi
  if [[ "$i" -gt "14" ]] || [ "$i" == "14" ]; then
  printf "\n\e[0;96m-14 \e[0m\e[0;77m$option14\e[0m"
  fi
  if [[ "$i" -gt "15" ]] || [ "$i" == "15" ]; then
  printf "\n\e[0;96m-15 \e[0m\e[0;77m$option15\e[0m"
  fi
echo

 printf "\n\e[0;92m? \e[0m\e[1;77mOption :\e[0;96m\e[0m"
  read -n2 selected
  tput cnorm
  enter

}

    if [[ $d == 0 ]]; then
    defaultmenu

    elif [[ $d == 1 ]]; then
    othermenu
    fi
