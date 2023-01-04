#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

neofetch

alias clear='clear && neofetch'
alias ls='ls --color=auto'

export ORANGE="\e[1;32m"
export YELLOW="\e[1;33m"
export RED="\e[1;31m"
export RESET="\e[0m"

PS1="${ORANGE}[\w]${YELLOW}|${RED}>${RESET} "
. "$HOME/.cargo/env"

function goto(){
	if [ $# -ne 1 ]; then
	    echo "not enough arguments were provided"
	    return
	fi

	case $1 in
	    dwm)
		cd "${HOME}/.config/suckless/dwm"
		;;
	    dmenu)
		cd "${HOME}/.config/suckless/dmenu"
		;;
	    st)
		cd "${HOME}/.config/suckless/st"
		;;
	    slstatus)
		cd "${HOME}/.config/suckless/slstatus"
		;;
	esac
}
