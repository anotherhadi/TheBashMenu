#! /bin/bash

#//
#//
#//////////////////////////////////////////////////////////
#//               By @HadrienAka
#//////////////////////////////////////////////////////////
#//
#// Look, I spent more than 48 hours on this code.
#// I have no idea how it works, but it does works.
#// If ANYTHING happens to it, YOU will be the one
#// who will spend the next many hours trying to fix it.
#//
#//////////////////////////////////////////////////////////
#//
#//

command() {
while true
do
read -r -sn1 t
if [[ $t == A ]]; then #UP
allclear
statusbas=0
status=$(($status - 1))
or=1
menu
clebas
elif [[ $t == B ]]; then #DOWN
allclear
statusbas=0
status=$(($status + 1))
or=1
menu
clebas
elif [[ $t == C ]]; then #RIGHT
allclear
status=0
statusbas=$(($statusbas + 1))
or=2
menu
clebas
elif [[ $t == D ]]; then #LEFT
allclear
statusbas=$(($statusbas - 1))
status=0
or=2
menu
clebas
elif [[ $t == "" ]]; then #ENTER
cleenter
fi
done
}

##############################################################
##############################################################
##############################################################
############           SPACE TO EDIT              ############
##############################################################
##############################################################
##############################################################

######   ----------->   THE MENU

menu () {
  if [[ $status == 1 ]]; then 
printf "               \e[0;77m\e[7;77m1. Tools\e[0;77m   \n"
        else
printf "               \e[0;77m\e[0;77m1. Tools\e[0;77m   \n"

        fi

if [[ $status == 2 ]]; then 
printf "               \e[0;77m\e[7;77m2. Scripts\e[0;77m   \n"
        else
printf "               \e[0;77m\e[0;77m2. Scripts\e[0;77m   \n"

        fi

if [[ $status == 3 ]]; then 
printf "               \e[0;77m\e[7;77m3. School\e[0;77m   \n"

        else
printf "               \e[0;77m\e[0;77m3. School\e[0;77m   \n"

        fi

if [[ $status == 4 ]]; then 
printf "               \e[0;77m\e[7;77m4. Applications\e[0;77m   \n"

        else
printf "               \e[0;77m\e[0;77m4. Applications\e[0;77m   \n"

        fi


#### RESET VAR
if [[ $status == -1 ]]; then 
          status=4
          allclear
menu
clebas
command

        fi
if [[ $status == 5 ]]; then 
          status=1
          allclear
menu
clebas
command

        fi

}

######   ----------->   THE COMMAND


cleenter () {
        if [[ $or == 2 && $statusbas == 1  ]]; then # BACK BUTTON
                exit
        elif [[ $or == 2 && $statusbas == 2  ]]; then # EXIT BUTTON
                exit
        elif [[ $or == 1 && $status == 1  ]]; then # Tools
            bash os/tool/tool.sh
        

        elif [[ $or == 1 && $status == 2  ]]; then # Scripts
            bash os/script/script.sh
        
        elif [[ $or == 1 && $status == 3  ]]; then # School
            bash os/school/school.sh
        
        elif [[ $or == 1 && $status == 4  ]]; then # Applications
            bash os/applications/application.sh
        fi
}

###################################
###################################
###################################
###################################
#### BAS
clebas () {
source ~/os/bas.sh
    if [[ $statusbas == 0 ]]; then 
        bas0
    elif [[ $statusbas == 1 ]]; then 
        bas1
    elif [[ $statusbas == 2 ]]; then 
        bas2
        
### RESET STATUSBAS
    elif [[ $statusbas == -1 ]]; then 
        statusbas=2
        status=0
allclear
menu
clebas
    elif [[ $statusbas == 3 ]]; then 
        statusbas=0
        status=0
allclear
menu
clebas
    fi
}
### BANNER
banner () {
cow=$( cowsay -f small MY FUCKING BASH SCRIPTS )
printf "  \e[0m\e[1;93m   \n"
printf "$cow"
printf "  \e[0m\n"
printf "\n"
printf "\n"
printf "\n"
}
allclear () {
    clear
    banner
}
#### ALL VAR
clevar () {
status=1
statusbas=0
or=1
}
###########################
####### FINAL TASK ########
###########################
clevar
allclear
menu
clebas
command

