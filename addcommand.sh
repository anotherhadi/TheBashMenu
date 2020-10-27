#! /bin/bash


read -p $'\n\e[0;92m+ \e[0m\e[1;77mCommand\'s Name: \e[0;96m' name
read -p $'\n\e[0;92m+ \e[0m\e[1;77mActualy, how much command do you have?: \e[0;96m' how

how=$(( $how+1 ))

# ADD SELECT TO ALL COMMAND

sed '/##newline/a\
printf "\\n\\r  '$name'                                    "\
' main.sh > final.txt
rm main.sh
mv final.txt main.sh

# ADD IS SELECT

sed '/##newselect/a\
elif [[ $selected == '$how' ]]; then\
tput rc\
printf "\\n\\r\\e[0;92m✓ \\e[0m\\e[1;77mThe Bash Menu \\e[0;96m [Use arrows to move, enter to select]\\e[0m"\
printf "\\n\\r  See The Code                             "\
printf "\\n\\r  My GitHub                                          "\
printf "\\n\\r  Credits                                     "\
printf "\\n\\r  Add                                          "\
##newtemp\
##tempnew\
printf "\\n\\r\\e[1;96m> '$name'                               \\e[0m     "\
##newline\
##letsnew\
' main.sh > final.txt
rm main.sh
mv final.txt main.sh

echo $name > nametemp.txt


sed '/##newline/d' main.sh > final.txt
rm main.sh
mv final.txt main.sh

sed '/##letsnew/a\
##newline\
' main.sh > final.txt
rm main.sh
mv final.txt main.sh

sed '/##letsnew/d' main.sh > final.txt
rm main.sh
mv final.txt main.sh

sed '/##newline/a\
##letsnew\
' main.sh > final.txt
rm main.sh
mv final.txt main.sh

sed '/##addcommand/a\
elif [[ $selected == '$how' ]]; then\
:\
' main.sh > final.txt
rm main.sh
mv final.txt main.sh
