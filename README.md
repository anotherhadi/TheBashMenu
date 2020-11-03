# The Bash Menu [v1.1]
![](menu.gif)
#### A very useful script allowing you to create your own menu.
<p>Create your own beautiful menu with a simple bash file, add a title, a subtitle, your options and your commands!</p>

### Informations:
<p>There is a file named "elements.sh" containing different examples of input, output, reading functions in the same graphic style as "bmenu". You will also find "menuexample.sh", feel free to modify it to create your first bmenu. Once modified, type "bash menuexample.sh" to try it.</p>
<p>Work on : MacOs, KaliLinux [Probably more, tell me if that's the case]</p>

### Install:
```bash
git clone https://github.com/hadrienaka/TheBashMenu
cd TheBashMenu
bash install.sh
```

### Create Your Own Menu :
![](menuexemple.gif)

<p> Create a new bash file (.sh), then paste:</p>

```bash
  enter () {
    if [[ $selected == 1 ]]; then 
      #This is Option 1
      #Type Your command here

    elif [[ $selected == 2 ]]; then 
      #This is Option 2
      #Type Your command here

    elif [[ $selected == 3 ]]; then # Copy/paste to get more options, change 3 to 4
      #This is Option 3
      #Type Your command here
  fi
  }

  source bmenu -t "Menu Title" -s "[SubTitle]" -o "Option 1,Option 2,Option 3"

```

```diff
! Put a comma between each options (--option | -o)
! The function need to be call "enter" and the var "selected".
```

### Arguments:

```diff
! Arguments :

-h, --help               Show brief help
-t, --title              Edit the title
-s, --subtitle           Edit the subtitle
-o, --option             Edit all the options (Put a comma between them)
-a, --alternative        Display an alternative menu (Put -a at the end of the command)
-u, --update             Update bmenu

```

### Alternative Menu
![](menualternative.jpg)

<p> The alternative menu may be a better choice when you have more than 10 options </p>
<p> To display an alternative menu, just add "-a" or "--alternative" at the end of your command. </p>

![Twitter Follow](https://img.shields.io/twitter/follow/hadrienaka?label=%40HadrienAka&logo=twitter&logoColor=ffffff&style=for-the-badge)
![GitHub followers](https://img.shields.io/github/followers/hadrienaka?color=9F9F9F&label=%40HadrienAka&logo=github&style=for-the-badge)
![Website](https://img.shields.io/website?color=9F9F9F&label=Hadrienaka.fr&logo=brave&logoColor=ffffff&style=for-the-badge&up_message=SEE&url=https%3A%2F%2Fhadrienaka.fr)
