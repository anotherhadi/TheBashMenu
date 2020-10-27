#/bin/bash
rm README.md
rm menu.gif
rm add.gif
chmod +x main.sh
chmod +x addcommand.sh
how=1
echo $how > .how.txt
printf "\n\e[0;92m✓ \e[0m\e[1;77mWell done! \e[0m"
printf "\n\e[0;92m✓ \e[0m\e[1;77mYour Menu Is Ready\e[0;96m\e[0m"
printf "\n\e[0;92m? \e[0m\e[1;77mLet's add your first option \e[0;96m\e[0m"
printf "\n\e[0;92m? \e[0m\e[1;77m\e[0;96mYou will need to press the right arrow on your keyboard to go on the settings\e[0m"
printf "\n"
printf "\n\e[0;92m? [Type enter when ready]\e[0m\e[1;77m\e[0;96m\e[0m"

while true
do
read -r -sn1 t

if [[ $t == "" ]]; then ###### When You Press Enter
rm install.sh
printf "\n"
printf "\n"
printf "\n"
./main.sh

else
:
fi
done

./main.sh