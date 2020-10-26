#/bin/bash
tput sc
selected=1
commande() {
while true
do
read -r -sn1 t
if [[ $t == A ]]; then ###### When You Press Up
selected=$(($selected - 1))
display
elif [[ $t == B ]]; then ###### When You Press Down
selected=$(($selected + 1))
display
elif [[ $t == "" ]]; then ###### When You Press Enter
enter
fi
done
}

display() {

  if [[ $selected == 1 ]]; then 
tput rc 
printf "\n\r\e[0;92m✓ \e[0m\e[1;77mThe Bash Menu \e[0;96m [Use arrows to move, enter to select]\e[0m"
printf "\n\r\e[1;96m> See The Code                             \e[0m"
printf "\n\r  My GitHub                                          "
printf "\n\r  Credits                                     "
printf "\n\r  Exit                                          "


elif [[ $selected == 2 ]]; then 
tput rc
printf "\n\r\e[0;92m✓ \e[0m\e[1;77mThe Bash Menu \e[0;96m [Use arrows to move, enter to select]\e[0m"
printf "\n\r  See The Code                                          "
printf "\n\r\e[1;96m> My GitHub                             \e[0m"
printf "\n\r  Credits                                     "
printf "\n\r  Exit                                          "

elif [[ $selected == 3 ]]; then 
tput rc
printf "\n\r\e[0;92m✓ \e[0m\e[1;77mThe Bash Menu \e[0;96m [Use arrows to move, enter to select]\e[0m"
printf "\n\r  See The Code                                          "
printf "\n\r  My GitHub                                          "
printf "\n\r\e[1;96m> Credits                                     \e[0m"
printf "\n\r  Exit                                          "


elif [[ $selected == 4 ]]; then 
tput rc
printf "\n\r\e[0;92m✓ \e[0m\e[1;77mThe Bash Menu \e[0;96m [Use arrows to move, enter to select]\e[0m"
printf "\n\r  See The Code                                          "
printf "\n\r  My GitHub                                          "
printf "\n\r  Credits                                     "
printf "\n\r\e[1;96m> Exit                                          \e[0m"

## ADD A NEW LINE :
#                     |-  ADD 1 HERE
#elif [[ $selected == 4 ]]; then 
#tput rc
#printf "\n\r\e[0;92m✓ \e[0m\e[1;77mThe Bash Menu \e[0;96m [Use arrows to move, enter to select]\e[0m"
#printf "\n\r  See The Code                                          "
#printf "\n\r  My GitHub                                          "
#printf "\n\r  Credits                                     "
#printf "\n\r\e[1;96m> Exit                                          \e[0m"
# AND PAST YOUR NEW LINE HERE, COPY AND PAST IT FOR ALL THE ELIF BEHIND

else
selected=1
display 

fi
}


enter () {
  if [[ $selected == 1 ]]; then 
    vim main.sh
    
  elif [[ $selected == 2 ]]; then
    open https://github.com/hadrienaka

  elif [[ $selected == 3 ]]; then 
    open https://hadrienaka.fr/copy.html
    
  elif [[ $selected == 4 ]]; then 
    exit

fi
}

display
commande




