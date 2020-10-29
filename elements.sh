
##########################################################
####### Created By @HadrienAka  #    Elements            #
##########################################################

  # ________________________HELP________________________

  #  To get help, type "bmenu -h" or see the github repo:
  #  https://github.com/hadrienaka/TheBashMenu


  #______________________ELEMENTS______________________

  # Information :

  printf "\n\e[0;92m- \e[0m\e[1;77mA Title\e[0;96m [With Subtitle]\e[0m"

  printf "\n\e[0;92m✓ \e[0m\e[1;77mSucess Message\e[0m"
  printf "\n\e[0;92m+ \e[0m\e[1;77mAdded Message\e[0m"
  printf "\n\e[0;91mx \e[0m\e[1;77mError Message\e[0m"

  printf "\n\e[0;92m? \e[0m\e[1;77mHelp : \e[0;96mhttps://github.com/hadrienaka/TheBashMenu \e[0m"

  # Options :

  printf "\n\r\e[1;96m> Option Select                      \e[0m"
  printf "\n\r\e[0;0m  Option Not Select                   \e[0m"

  ######## Input :

  # Any input

  read -p $'\n\e[0;92m+\e[0m\e[1;77m Input: \e[0;96m' input
  echo $input

  # Yes/No Input

  printf "\n\e[0;92m? \e[0m\e[1;77mYes or No ?\e[0;96m [y/n]\e[0m"
  read -n1 yn
  if [[ $yn == y ]]; then
    printf "\n\e[0;92m✓ \e[0m\e[1;77mYes\e[0m"
    echo
  elif [[ $yn == "n" ]]; then
    printf "\n\e[0;91mx \e[0m\e[1;77mNo\e[0m"
    echo
  fi
 
  # Wait until the user press "enter"

  printf "\n\e[0;92m? \e[0;96m[Type enter when ready]\e[0m"
  read -r -sn1 t
  if [[ $t == "" ]]; then 
    printf "\n\e[0;92m✓ \e[0m\e[1;77mSucess\e[0m"
    echo
  fi



 #____________________Menu Template___________________

  # Menu Template :

  enter () {
    if [[ $selected == 1 ]]; then 
      #This is Option 1
      #Type Your command here

    elif [[ $selected == 2 ]]; then 
      #This is Option 2
      #Type Your command here

    elif [[ $selected == 3 ]]; then # Copy/paste to get more options, change 3 to 4
      #This is Option 3
      #Type Your command here
  fi
  }

  source bmenu -t "Menu Title" -s "[SubTitle]" -o "Option 1,Option 2,Option 3"
