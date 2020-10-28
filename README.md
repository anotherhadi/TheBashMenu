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
![](exemples.gif)
```diff
! Arguments :

-h, --help               Show brief help
-t, --title              Edit the title
-s, --subtitle           Edit the subtitle
-o, --option             Edit all the options (Put a space between them)
-l, --link               Link your command file (see further)

```
<p> This input created the menu above </p>

```bash
./~/.bmenu -t "My Title" -s "[my subtitle]" -o "My Different Options" -l mycommand.sh
```

### Add commands :
<p> Create a new file (.sh), then paste:</p>

```bash
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

```
! The function need to be call "enter", the var "selected" and don't miss to put "export -f"
! Don't forget to link this file with the -l argument
```
 

![Twitter Follow](https://img.shields.io/twitter/follow/hadrienaka?label=%40HadrienAka&logo=twitter&logoColor=ffffff&style=for-the-badge)
![GitHub followers](https://img.shields.io/github/followers/hadrienaka?color=9F9F9F&label=%40HadrienAka&logo=github&style=for-the-badge)
![Website](https://img.shields.io/website?color=9F9F9F&label=Hadrienaka.fr&logo=brave&logoColor=ffffff&style=for-the-badge&up_message=SEE&url=https%3A%2F%2Fhadrienaka.fr)
