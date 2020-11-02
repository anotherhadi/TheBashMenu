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
printf "\e[0;92m✓ \e[0m\e[1;77mThe Bash Menu\e[0;96m [v1.0]\e[0m"
printf "\n\e[0;92m? \e[0m\e[1;77mTo update bmenu type :\e[0;96m bmenu -u\e[0m"
printf "\n\e[0;92m? \e[0m\e[1;77mAnd to get help type :\e[0;96m bmenu -h\e[0m"
echo
exit 0
}
[ -z "$1" ] && empty

############################################# TRAP CTRL C

trap ctrl_c INT

function ctrl_c() {
  tput cnorm
  tput rc
  tput ed
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
  printf "\n\e[1;92m-u, --update          \e[0m\e[1;77mUpdate bmenu\e[0m"
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

    -u|--update)
      shift
        git clone https://github.com/hadrienaka/thebashmenu &>/dev/null
        cd TheBashMenu
        chmod +x bmenu.sh
        sudo rm /usr/local/bin/bmenu
        sudo mv bmenu.sh /usr/local/bin/bmenu
        cd ..
        rm -rf TheBashMenu
        printf "\n\e[0;92m✓ \e[0m\e[1;77mSuccessfully Updated\e[0m"
        exit
      shift
      ;;
    
    *)
      break
      ;;
  esac
done


################################################## CHECK IF -l & LINKFILE EXIST

if [ -z "$linkfile" ]; then
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

    elif [[ $i == 16 ]]; then
    option16=$command
    option16=$( echo $option16 | tr /  \  )

    elif [[ $i == 17 ]]; then
    option17=$command
    option17=$( echo $option17 | tr /  \  )

    elif [[ $i == 18 ]]; then
    option18=$command
    option18=$( echo $option18 | tr /  \  )

    elif [[ $i == 19 ]]; then
    option19=$command
    option19=$( echo $option19 | tr /  \  )

    elif [[ $i == 20 ]]; then
    option20=$command
    option20=$( echo $option20 | tr /  \  )

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
testenter=$((testenter + 1))
printf "\n\r                                                                             "
done
tput rc
tput sc
tput cnorm
tput ed
}

####################################################################
############################## TITLE ###############################
####################################################################

thetitle () {
  printf "\r\e[0;92m✓ \e[0m\e[1;77m$title\e[0;96m  $subtitle\e[0m"
}

####################################################################
####################################################################
##############         OPTION AND DISPLAY              #############
####################################################################
####################################################################


display () {
tempi=$i
thetitle

if [[ $selected == 0 ]]; then
selected=1
fi

if [[ $i -ge 1 ]] && [[ $selected != 1 ]] ; then
printf "\n\r  $option1                                   "
elif [[ $i -ge 1 ]] && [[ $selected == 1 ]] ; then
printf "\n\r\e[1;96m> $option1                             \e[0m"
fi

if [[ $i -ge 2 ]] && [[ $selected != 2 ]] ; then
printf "\n\r  $option2                                   "
elif [[ $i -ge 2 ]] && [[ $selected == 2 ]] ; then
printf "\n\r\e[1;96m> $option2                             \e[0m"
fi

if [[ $i -ge 3 ]] && [[ $selected != 3 ]] ; then
printf "\n\r  $option3                                   "
elif [[ $i -ge 3 ]] && [[ $selected == 3 ]] ; then
printf "\n\r\e[1;96m> $option3                             \e[0m"
fi

if [[ $i -ge 4 ]] && [[ $selected != 4 ]] ; then
printf "\n\r  $option4                                   "
elif [[ $i -ge 4 ]] && [[ $selected == 4 ]] ; then
printf "\n\r\e[1;96m> $option4                             \e[0m"
fi

if [[ $i -ge 5 ]] && [[ $selected != 5 ]] ; then
printf "\n\r  $option5                                   "
elif [[ $i -ge 5 ]] && [[ $selected == 5 ]] ; then
printf "\n\r\e[1;96m> $option5                             \e[0m"
fi

if [[ $i -ge 6 ]] && [[ $selected != 6 ]] ; then
printf "\n\r  $option6                                   "
elif [[ $i -ge 6 ]] && [[ $selected == 6 ]] ; then
printf "\n\r\e[1;96m> $option6                             \e[0m"
fi

if [[ $i -ge 7 ]] && [[ $selected != 7 ]] ; then
printf "\n\r  $option7                                   "
elif [[ $i -ge 7 ]] && [[ $selected == 7 ]] ; then
printf "\n\r\e[1;96m> $option7                             \e[0m"
fi

if [[ $i -ge 8 ]] && [[ $selected != 8 ]] ; then
printf "\n\r  $option8                                   "
elif [[ $i -ge 8 ]] && [[ $selected == 8 ]] ; then
printf "\n\r\e[1;96m> $option8                             \e[0m"
fi

if [[ $i -ge 9 ]] && [[ $selected != 9 ]] ; then
printf "\n\r  $option9                                   "
elif [[ $i -ge 9 ]] && [[ $selected == 9 ]] ; then
printf "\n\r\e[1;96m> $option9                             \e[0m"
fi

if [[ $i -ge 10 ]] && [[ $selected != 10 ]] ; then
printf "\n\r  $option10                                   "
elif [[ $i -ge 10 ]] && [[ $selected == 10 ]] ; then
printf "\n\r\e[1;96m> $option10                             \e[0m"
fi

if [[ $i -ge 11 ]] && [[ $selected != 11 ]] ; then
printf "\n\r  $option11                                   "
elif [[ $i -ge 11 ]] && [[ $selected == 11 ]] ; then
printf "\n\r\e[1;96m> $option11                             \e[0m"
fi

if [[ $i -ge 12 ]] && [[ $selected != 12 ]] ; then
printf "\n\r  $option12                                   "
elif [[ $i -ge 12 ]] && [[ $selected == 12 ]] ; then
printf "\n\r\e[1;96m> $option12                             \e[0m"
fi

if [[ $i -ge 13 ]] && [[ $selected != 13 ]] ; then
printf "\n\r  $option13                                   "
elif [[ $i -ge 13 ]] && [[ $selected == 13 ]] ; then
printf "\n\r\e[1;96m> $option13                             \e[0m"
fi

if [[ $i -ge 14 ]] && [[ $selected != 14 ]] ; then
printf "\n\r  $option14                                   "
elif [[ $i -ge 14 ]] && [[ $selected == 14 ]] ; then
printf "\n\r\e[1;96m> $option14                             \e[0m"
fi

if [[ $i -ge 15 ]] && [[ $selected != 15 ]] ; then
printf "\n\r  $option15                                   "
elif [[ $i -ge 15 ]] && [[ $selected == 15 ]] ; then
printf "\n\r\e[1;96m> $option15                             \e[0m"
fi

tempi=$((i + 1))
if [[ $selected == $tempi ]]; then 
    selected=1
    tput sc
    avar=0
    while (( $avar != $i ))
    do
        tput cuu1
        tput sc
        avar=$((avar + 1))
    done
    display
else
    tput sc
    avar=0
    while (( $avar != $i ))
        do
            tput cuu1
            tput sc
            avar=$((avar + 1))
        done
fi

}


ifoption () {
while true
do
read -r -sn1 t
if [[ $t == A ]]; then 
selected=$(($selected - 1))
display
elif [[ $t == B ]]; then 
selected=$(($selected + 1))
display
elif [[ $t == "" ]]; then 
enterbis ; enter
fi
done
}



defaultmenu ()
{
display
ifoption
}

othermenu ()
{
  thetitle
  printf "\n"
  if [[ $i -gt 1 ]] || [[ $i = 1 ]]; then
  printf "\n\e[0;96m-1 \e[0m\e[0;77m$option1\e[0m"
  fi
  if [[ "$i" -gt "11" ]] || [ "$i" == "11" ]; then
  printf "     \e[0;96m-11 \e[0m\e[0;77m$option11\e[0m"
  fi

  if [[ $i -gt 2 ]] || [[ $i = 2 ]]; then
  printf "\n\e[0;96m-2 \e[0m\e[0;77m$option2\e[0m"
  fi
  if [[ "$i" -gt "12" ]] || [ "$i" == "12" ]; then
  printf "     \e[0;96m-12 \e[0m\e[0;77m$option12\e[0m"
  fi

  if [[ $i -gt 3 ]] || [[ $i = 3 ]]; then
  printf "\n\e[0;96m-3 \e[0m\e[0;77m$option3\e[0m"
  fi
  if [[ "$i" -gt "13" ]] || [ "$i" == "13" ]; then
  printf "     \e[0;96m-13 \e[0m\e[0;77m$option13\e[0m"
  fi

  if [[ $i -gt 4 ]] || [[ $i = 4 ]]; then
  printf "\n\e[0;96m-4 \e[0m\e[0;77m$option4\e[0m"
  fi
   if [[ "$i" -gt "14" ]] || [ "$i" == "14" ]; then
  printf "     \e[0;96m-14 \e[0m\e[0;77m$option14\e[0m"
  fi

  if [[ $i -gt 5 ]] || [[ $i = 5 ]]; then
  printf "\n\e[0;96m-5 \e[0m\e[0;77m$option5\e[0m"
  fi
   if [[ "$i" -gt "15" ]] || [ "$i" == "15" ]; then
  printf "     \e[0;96m-15 \e[0m\e[0;77m$option15\e[0m"
  fi

  if [[ $i -gt 6 ]] || [[ $i = 6 ]]; then
  printf "\n\e[0;96m-6 \e[0m\e[0;77m$option6\e[0m"
  fi
   if [[ "$i" -gt "16" ]] || [ "$i" == "16" ]; then
  printf "     \e[0;96m-16 \e[0m\e[0;77m$option16\e[0m"
  fi

  if [[ $i -gt 7 ]] || [[ $i = 7 ]]; then
  printf "\n\e[0;96m-7 \e[0m\e[0;77m$option7\e[0m"
  fi
   if [[ "$i" -gt "17" ]] || [ "$i" == "17" ]; then
  printf "     \e[0;96m-17 \e[0m\e[0;77m$option17\e[0m"
  fi

  if [[ $i -gt 8 ]] || [[ $i = 8 ]]; then
  printf "\n\e[0;96m-8 \e[0m\e[0;77m$option8\e[0m"
  fi
   if [[ "$i" -gt "18" ]] || [ "$i" == "18" ]; then
  printf "     \e[0;96m-18 \e[0m\e[0;77m$option18\e[0m"
  fi

  if [[ $i -gt 9 ]] || [[ $i = 9 ]]; then
  printf "\n\e[0;96m-9 \e[0m\e[0;77m$option9\e[0m"
  fi
   if [[ "$i" -gt "19" ]] || [ "$i" == "19" ]; then
  printf "     \e[0;96m-19 \e[0m\e[0;77m$option19\e[0m"
  fi

  if [[ "$i" -gt "10" ]] || [ "$i" == "10" ]; then
  printf "\n\e[0;96m-10 \e[0m\e[0;77m$option10\e[0m"
  fi
   if [[ "$i" -gt "20" ]] || [ "$i" == "20" ]; then
  printf "     \e[0;96m-20 \e[0m\e[0;77m$option20\e[0m"
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
