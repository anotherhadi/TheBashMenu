#! /bin/bash


read -p $'\n\e[0;92m+ \e[0m\e[1;77mCommand\'s Name: \e[0;96m' name
how=$( cat .how.txt )
how=$(( $how+1 ))
rm .how.txt
echo $how > .how.txt

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
title\
printf "\\n\\r  Option 1                             "\
printf "\\n\\r  Option 2                                          "\
printf "\\n\\r  Option 3                                     "\
##newtemp\
##tempnew\
printf "\\n\\r\\e[1;96m> '$name'                               \\e[0m     "\
##newline\
##letsnew\
position\
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
\
######## '$name'\
elif [[ $selected == '$how' ]]; then\
:\
' enter.sh > final.txt
rm enter.sh
mv final.txt enter.sh

sed '/##tputmore/a\
tput cuu1\
tput sc\
' main.sh > final.txt
rm main.sh
mv final.txt main.sh



