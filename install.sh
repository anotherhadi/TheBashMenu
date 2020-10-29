#! /bin/bash
rm README.md
rm menuexemple.gif
rm menu.gif

mv bmenu.sh ~/.bmenu
chmod +x ~/.bmenu
########################### ADD TO PATH
printf "\n"
printf "\n\e[0;92m✓ \e[0m\e[1;77mWell done! \"bmenu\" is now ready.\e[0m"
printf "\n"
printf "\n\e[0;92m+ \e[0m\e[1;77mYou will find in the \"TheBashMenu\" folder a menu exemple, feel free to edit it to create your own. \e[0;96m\e[0m"
printf "\n\e[0;92m+ \e[0m\e[1;77mThere is a file named \"elements.sh\" containing different examples of input, output, reading functions in the same graphic style as bmenu \e[0;96m\e[0m"
printf "\n"
printf "\n\e[0;92m? \e[0m\e[1;77m\e[0;96m[If you need help, check https://github.com/hadrienaka/TheBashMenu]\e[0m"
printf "\n"

rm install.sh
