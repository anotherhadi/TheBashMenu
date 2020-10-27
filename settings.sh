#/bin/bash

trap ctrl_c INT

function ctrl_c() {
  tput cnorm
  tput rc
  clear
  echo
  exit
}

settings() {

while true
do
  clear
  printf "\n\e[0;92m✓ \e[0m\e[1;77mSettings \e[0m"
  printf "\n"
  printf "\n\e[0;92m-> \e[0m\e[1;77mAdd a Command   \e[0;90m [a]\e[0m"
  printf "\n\e[0;92m-> \e[0m\e[1;77mRemove a Command\e[0;90m [b]\e[0m"
  printf "\n\e[0;92m-> \e[0m\e[1;77mEdit a Command  \e[0;90m [c]\e[0m"
  printf "\n\e[0;92m-> \e[0m\e[1;77mEdit The Title  \e[0;90m [d]\e[0m"
  printf "\n\e[0;92m-> \e[0m\e[1;77mCredits         \e[0;90m [e]\e[0m"
  printf "\n\e[0;92m-> \e[0m\e[1;77mExit            \e[0;90m [f]\e[0m"
  printf "\n"
  printf "\n"
  printf "\n"
  printf "\n"
  printf "\n"
  printf "\n\e[0;92m? \e[0m\e[1;77mOption \e[0;90m [a/b/..]\e[0m"
  read -n1 yn

if [[ $yn == "a" ]]; then 
  bash addcommand.sh


  #######CHANGE ADDCOMMAND

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
printf "\n\e[0;92m? \e[0;96mYou can now edit the command with: $ vim main.sh ,and search the enter function.  \e[0m"
printf "\n"
sleep 2
clear
bash main.sh
exit



################################## DELETE

elif [[ $yn == "b" ]]; then 
  printf "\n\e[0;92m? \e[0m\e[1;77mName \e[0;90m [ Case sensitive ! ] :\e[0m"
  read remove
sed '/\\n\\r  '$remove'/d' addcommand.sh > final.txt
rm addcommand.sh
mv final.txt addcommand.sh

sed '/\\n\\r  '$remove'/d' main.sh > final.txt
rm main.sh
mv final.txt main.sh

elif [[ $yn == "c" ]]; then 
:

elif [[ $yn == "d" ]]; then 
vim title

elif [[ $yn == "e" ]]; then 
open https://hadrienaka.fr/copy.html

elif [[ $yn == "f" ]]; then 
clear
bash main.sh
exit

else
  printf "\n\e[0;92mx \e[0m\e[1;77mError \e[0;90m [Try Again]\e[0m"

fi
done

}

settings



