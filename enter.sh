enter () {
  if [[ $selected == 1 ]]; then 
    vim main.sh

  elif [[ $selected == 2 ]]; then
    open https://github.com/hadrienaka

  elif [[ $selected == 3 ]]; then 
    open https://hadrienaka.fr/copy.html
    
##addcommand


fi
}

export -f
