#! /bin/bash
#####################################################################
#####################################################################
####### Created By @HadrienAka ####### Created By @HadrienAka #######
#####################################################################
#####################################################################
####
#### LEARN MORE ABOUT BMENU ON GITHUB.COM/HADRIENAKA/THEBASHMENU
#### If you like bmenu, please feel free to leave a star!
####
#### SUMMARY :
####
#### 1. $ bmenu
#### 2. Ctrl + x
#### 3. Arguments
#### 4. Title
#### 5. Default Menu
#### 6. Press enter
#### 7. Selection
#### 8. Alternative
#### 9. Start bmenu
####
###################### 1 - IF NO ARGUMENTS : CHECK FOR UPDATE, TYPE -H TO GET HELP
version=1.1
d=0

empty () {
upversion=$(curl -s -L https://hadrienaka.fr/update.txt ) 
printf "\e[0;92m✓ \e[0m\e[1;77mThe Bash Menu\e[0;96m [v%s]\e[0m" "$version"
if [[ $version == "$upversion" ]]; then 
printf "\n\e[0;92m✓ \e[0m\e[1;77mbmenu is up to date\e[0m"
else
printf "\n\e[0;91mx \e[0m\e[1;77mThere is a new update, please type :\e[0;96m bmenu -u\e[0m"
fi
printf "\n\e[0;92m? \e[0m\e[1;77mTo get help type :\e[0;96m bmenu -h\e[0m"
echo
exit 0
}
[ -z "$1" ] && empty

###################### 2 - CTRL + X : CLEAR, ECHO "GOOD BAY"

trap ctrl_c INT
function ctrl_c() {
  tput cnorm
  tput rc
  tput ed
  printf "\r\e[0;91mx \e[0m\e[1;77mGood Bye!                                                               \e[0m"
  echo
  exit
}

###################### 3 - ARGUMENTS

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
  printf "\n\e[1;92m-a, --alternative     \e[0m\e[1;77mDisplay an alternative menu (Put -a at the end of the command)\e[0m"
  printf "\n\e[1;92m-u, --update          \e[0m\e[1;77mDownload the latest version\e[0m"
  printf "\n"
  printf "\n\e[0;92m? \e[0m\e[1;77mMore information\e[0;96m on the github page.\e[0m"
  printf "\n\e[0;92m? \e[0m\e[1;77mDo you want to open it?\e[0;96m [y/n]\e[0m"
  read -r -n1 yn
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

    -a|--alternative)
      shift
        d=1
      shift
      ;;

    -u|--update)
      shift
      upversion=$(curl -s -L https://hadrienaka.fr/update.txt ) 
      if [[ $version == "$upversion" ]]; then 
        printf "\e[0;92m✓ \e[0m\e[1;77mbmenu is already up to date\e[0m"
        echo
        exit
      else
        git clone https://github.com/hadrienaka/thebashmenu &>/dev/null
        cd TheBashMenu || exit
        chmod +x bmenu.sh
        sudo rm /usr/local/bin/bmenu
        sudo mv bmenu.sh /usr/local/bin/bmenu
        cd .. || exit
        rm -rf TheBashMenu
        printf "\e[0;92m✓ \e[0m\e[1;77mSuccessfully Updated\e[0m"
        echo
        exit
      fi

      shift
      ;;
    
    *)
      break
      ;;
  esac
done

tput civis

###################### 4 - TITLE

thetitle () {
  printf "\r\e[0;92m✓ \e[0m\e[1;77m%s\e[0;96m  %s\e[0m" "$title" "$subtitle"
}

selected=1
option=$( echo "$option" | tr \   / )
option=$( echo "$option" | tr ,  \  )

###################### 5 - DISPLAY THE DEFAULT MENU

display() {
  thetitle
  i=1;
  for command in $option
  do
    command=$( echo "$command" | tr /  \  )
    if [[ $selected == "$i" ]]; then 
      printf "\n\r\e[1;96m> %s                             \e[0m" "$command"
    else
      printf "\n\r  %s                                   " "$command"
    fi
    i=$((i + 1));
  done

  tempi=$i
  if [[ $selected == "$tempi" ]] || [[ $selected == 0 ]]; then 
    selected=1
    tput sc
    for (( testi=1; testi<i; ++testi)); do
      tput cuu1
      tput sc
    done
    display
  else
    tput sc
    for (( testi=1; testi<i; ++testi)); do
      tput cuu1
      tput sc
    done
  fi

}
i=$((i - 1));

###################### 6 - WHEN PRESS ENTER

pressenter () {
  printf "\r                                                                            "
  for (( clearenter=1; clearenter<i; ++clearenter)); do
    printf "\n\r                                                                             "
  done
  tput rc
  tput sc
  tput cnorm
  tput ed
  return
}

###################### 7 - SELECTION

keyboardinput () {
while true
  do
  read -r -sn1 t
  if [[ $t == A ]]; then 
    selected=$((selected - 1))
    display
  elif [[ $t == B ]]; then 
    selected=$((selected + 1))
    display
  elif [[ $t == "" ]]; then 
    pressenter
  fi
done
}

###################### 8 - ALTERNATIVE MENU

alternativemenu ()
{
  thetitle
  i=1;
  for command in $option
  do
    command=$( echo "$command" | tr /  \  )
    printf "\n\r\e[0;96m-%s\e[0m  %s                                   " "$i" "$command"
    i=$((i + 1))
  done
  echo
  printf "\n\e[0;92m? \e[0m\e[1;77mOption : \e[0;96m"
  read -r selected
  printf "\e[0m"
  tput cnorm
}

###################### 9 - Start bmenu

if [[ $d == 0 ]]; then
  display
  keyboardinput

elif [[ $d == 1 ]]; then
  alternativemenu
fi
