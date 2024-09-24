#@ #######################################################
#@ This file contains some useful variables and aliases. #
#@ #######################################################

#@ Set custom terminal prompt
PS1="\[\033[38;2;255;165;0m\]\$USER\[\e[0m\]@\[\e[1;36m\]\$HOSTNAME\[\e[0m\]: \[\e[1;37m\]\$PWD\[\e[1;31m\] [\$?]\[\e[0m\]$ "

#@ Clear screen alias
alias cls='printf "\ec"'

#@ Close terminal alias
alias quit='exit'

#@ Debian package manager aliases
alias apt='sudo apt'
alias dpkg='sudo dpkg'

#@ Systemd alias
alias systemctl='sudo systemctl'

#@ Docker alias
alias docker='sudo docker'
