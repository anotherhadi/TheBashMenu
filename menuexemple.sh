  enter () {
    if [[ $selected == 1 ]]; then 
      open https://github.com/hadrienaka
      exit
    elif [[ $selected == 2 ]]; then 
      open https://twitter.com/hadrienaka
      exit
    elif [[ $selected == 3 ]]; then # Copy/paste to get more options, change 3 to 4
      open https://hadrienaka.fr
      exit
  fi
  }

  source ~/.bmenu -t "TheBashMenu" -s "[use arrows to move, enter to select]" -o "My Github,My Twitter,My Website"
