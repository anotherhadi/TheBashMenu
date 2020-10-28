#! /bin/bash
rm menu.gif
rm readme.md
rm exemples.gif
mv bmenu.sh ~/.bmenu
chmod +x ~/.bmenu
########################### ADD TO PATH
alias bmenu="bash ~/.bmenu"
printf "\n\e[0;92m✓ \e[0m\e[1;77mWell done! \e[0m"
printf "\n\e[0;92m✓ \e[0m\e[1;77mBMenu Is Ready\e[0;96m\e[0m"
printf "\n\e[0;92m? \e[0m\e[1;77mYou can now create your own menu \e[0;96m\e[0m"
printf "\n\e[0;92m? \e[0m\e[1;77m\e[0;96m[If you don't know how to do it, check https://github.com/hadrienaka/TheBashMenu]\e[0m"
printf "\n"
cd ..
rm -rf TheBashMenu
