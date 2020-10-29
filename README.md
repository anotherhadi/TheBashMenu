# The Bash Menu
![](menu.gif)
#### A very useful script allowing you to create your own menu.


### How it works:
<p>Create your own beautiful menu with a simple command, add a title, a subtitle and
add up to 10 options !</p>
<p>There is a file named "elements.sh" containing different example input, output and an example menu</p>
<p>Work on : MacOs, KaliLinux [And probably more, tell me if you try it]</p>

### Install:
```bash
git clone https://github.com/hadrienaka/TheBashMenu
cd TheBashMenu
bash install.sh
```

### Create a new menu/Arguments:
![](exemples.gif)
```diff
! Arguments :

-h, --help               Show brief help
-t, --title              Edit the title
-s, --subtitle           Edit the subtitle
-o, --option             Edit all the options (Put a comma between them)
-l, --link               Link your command file (see further)

```
<p> Add "" after an arguments if there is more than one word.</p>
<p> Whith the -o,please, put a comma "," between the different options.</p>
<p> This input created the menu above : </p>

```bash
./~/.bmenu -t "My First Menu" -s "[Use arrows to move]" -o "Exit,hadrienaka.fr,Twitter" -l MyFirstMenu.sh
```

### Add commands :
<p> Create a new bash file (.sh), then paste:</p>

```bash
enter () {
  if [[ $selected == 1 ]]; then 
      #This is Option 1
      #Type Your command here

  elif [[ $selected == 2 ]]; then 
      #This is Option 2
      #Type Your command here

  elif [[ $selected == 3 ]]; then # Copy/paste this for more options, change the 3 to 4
      #This is Option 3
      #Type Your command here

fi
}
export -f
```

```diff
! The function need to be call "enter", the var "selected" and don't miss to put "export -f"
! Don't forget to link this file with the -l argument
```
 

![Twitter Follow](https://img.shields.io/twitter/follow/hadrienaka?label=%40HadrienAka&logo=twitter&logoColor=ffffff&style=for-the-badge)
![GitHub followers](https://img.shields.io/github/followers/hadrienaka?color=9F9F9F&label=%40HadrienAka&logo=github&style=for-the-badge)
![Website](https://img.shields.io/website?color=9F9F9F&label=Hadrienaka.fr&logo=brave&logoColor=ffffff&style=for-the-badge&up_message=SEE&url=https%3A%2F%2Fhadrienaka.fr)
