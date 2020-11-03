
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
#### 1. OutPut
#### 2. InPut
#### 3. Menu Template
####
###################### 1 - OutPut

  # Information :

  printf "\n\e[0;92m- \e[0m\e[1;77mA Title\e[0;96m [With Subtitle]\e[0m"

  printf "\n\e[0;92m✓ \e[0m\e[1;77mSucess Message\e[0m"
  printf "\n\e[0;92m+ \e[0m\e[1;77mAdded Message\e[0m"
  printf "\n\e[0;91mx \e[0m\e[1;77mError Message\e[0m"

  printf "\n\e[0;92m? \e[0m\e[1;77mHelp : \e[0;96mhttps://github.com/hadrienaka/TheBashMenu \e[0m"

  # Options :

  printf "\n\r\e[1;96m> Option Select                      \e[0m"
  printf "\n\r\e[0;0m  Option Not Select                   \e[0m"

###################### 2 - InPut

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



###################### 3 - Menu Template

source bmenu -t "Menu Title" -s "[SubTitle]" -o "Option 1,Option 2,Option 3"

case ${selected} in
	1) TypeYourCommandHere;;
	2) TypeYourCommandHere;;
	3) TypeYourCommandHere;;
esac