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
printf "\n\r  Add                                          "
##newline
##letsnew



elif [[ $selected == 2 ]]; then 
tput rc
printf "\n\r\e[0;92m✓ \e[0m\e[1;77mThe Bash Menu \e[0;96m [Use arrows to move, enter to select]\e[0m"
printf "\n\r  See The Code                                          "
printf "\n\r\e[1;96m> My GitHub                             \e[0m"
printf "\n\r  Credits                                     "
printf "\n\r  Add                                          "
##newline
##letsnew



elif [[ $selected == 3 ]]; then 
tput rc
printf "\n\r\e[0;92m✓ \e[0m\e[1;77mThe Bash Menu \e[0;96m [Use arrows to move, enter to select]\e[0m"
printf "\n\r  See The Code                                          "
printf "\n\r  My GitHub                                          "
printf "\n\r\e[1;96m> Credits                                     \e[0m"
printf "\n\r  Add                                          "
##newline
##letsnew



elif [[ $selected == 4 ]]; then 
tput rc
printf "\n\r\e[0;92m✓ \e[0m\e[1;77mThe Bash Menu \e[0;96m [Use arrows to move, enter to select]\e[0m"
printf "\n\r  See The Code                                          "
printf "\n\r  My GitHub                                          "
printf "\n\r  Credits                                     "
printf "\n\r\e[1;96m> Add                                          \e[0m"
##newline
##letsnew





##newselect














else #MAXIMUM
selected=1
display 

fi
}


enter () {
  if [[ $selected == 1 ]]; then 
    vim main.sh

##addcommand





  elif [[ $selected == 2 ]]; then
    open https://github.com/hadrienaka

  elif [[ $selected == 3 ]]; then 
    open https://hadrienaka.fr/copy.html
    
  elif [[ $selected == 4 ]]; then 
    bash addcommand.sh
    name=$( cat nametemp.txt )

sed '/##newtemp/a\
printf "\\\\n\\\\r  '$name'                                          "\\\
' addcommand.sh > final.txt
rm addcommand.sh
mv final.txt addcommand.sh
rm nametemp.txt

sed '/##newtemp/d' addcommand.sh > final.txt
rm addcommand.sh
mv final.txt addcommand.sh

sed '/##tempnew/a\
##newtemp\\\
' addcommand.sh > final.txt
rm addcommand.sh
mv final.txt addcommand.sh

sed '/##tempnew/d' addcommand.sh > final.txt
rm addcommand.sh
mv final.txt addcommand.sh

sed '/##newtemp/a\
##tempnew\\\
' addcommand.sh > final.txt
rm addcommand.sh
mv final.txt addcommand.sh


printf "\n\n\e[0;92m✓ \e[0m\e[1;77mAdded Succesfully! \e[0m"
printf "\n\e[0;92m? \e[0;96mYou can now edit the command with: $ vim main.sh  \e[0m"
printf "\n\e[0;92m? \e[0;96mAnd search the enter function.  \e[0m"
printf "\n"
printf "\n"
sleep 2
bash main.sh
fi
}

display
commande




