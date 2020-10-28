# The Bash Menu
![](menu.gif)
#### A very useful script allowing you to create your own menu.


### How it works:
<p>Create your own beautiful menu with a simple command, add a title, a subtitle and
add up to 10 options !</p>
<p>Work on : MacOs, KaliLinux [And probably more, tell me if you try it]</p>

### Install:
```bash
git clone https://github.com/hadrienaka/TheBashMenu
cd TheBashMenu
bash install.sh
```

### Create a new menu/Arguments:
![](add.gif)
<p>To create your own menu use these arguments :</p>
<p> -t  : Change the title</p>
<p> -s  : Change the subtitle</p>
<p> -o  : Add options (Put a space between the options)</p>
<p> -l  : link your command file (explained after)</p>
<p>This is the command that displayed the menu above</p>

```bash
./~/.bmenu -t "My Title" -s "[my subtitle]" -o "My Different Options" -l mycommand.sh
```

### Add commands :
<p> To add a command, create a bash file with : </p>

```bash
# /!\ You need to call the function "enter", the var "selected" and add "export -f" /!\
enter () {
  if [[ $selected == 1 ]]; then 
    echo "By HadrienAka"

  elif [[ $selected == 2 ]]; then 
    open https://github.com/HadrienAka

  elif [[ $selected == 3 ]]; then 
    open https://twitter.com/HadrienAka

fi
}
export -f
```
<p> Don't forget to link this file with the -l argument
  
 

#### Follow me on [![Twitter][1.2]][1] or on [![Github][6.1]][6]
[1.2]: http://i.imgur.com/tXSoThF.png (twitter icon without padding)
[6.1]: http://i.imgur.com/0o48UoR.png (github icon with padding)
[1]: https://twitter.com/hadrienaka
[6]: http://www.github.com/hadrienaka
