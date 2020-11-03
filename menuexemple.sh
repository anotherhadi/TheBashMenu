source bmenu -t "TheBashMenu" -s "[use arrows to move, enter to select]" -o "My Github,My Twitter,My Website" #-a #Delete the # before "-a" to display the alternative menu.

case ${selected} in
	1) open https://github.com/hadrienaka;;
	2) open https://twitter.com/hadrienaka;;
	3) open https://hadrienaka.fr;;
esac