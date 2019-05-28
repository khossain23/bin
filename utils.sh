#!/bin/bash

# from Nate Landau: https://natelandau.com/bash-scripting-utilities/

# Set Colors
bold=$(tput bold)
underline=$(tput sgr 0 1)
reset=$(tput sgr0)

purple=$(tput setaf 171)
red=$(tput setaf 1)
green=$(tput setaf 76)
tan=$(tput setaf 3)
blue=$(tput setaf 38)

# Formatted messages:
e_header() { printf "\n${bold}${purple}==========  %s  ==========${reset}\n" "$@" 
}
e_arrow() { printf "➜ $@\n"
}
e_success() { printf "${green}✔ %s${reset}\n" "$@"
}
e_error() { printf "${red}✖ %s${reset}\n" "$@"
}
e_warning() { printf "${tan}➜ %s${reset}\n" "$@"
}
e_underline() { printf "${underline}${bold}%s${reset}\n" "$@"
}
e_bold() { printf "${bold}%s${reset}\n" "$@"
}
e_note() { printf "${underline}${bold}${blue}Note:${reset}  ${blue}%s${reset}\n" "$@"
}

# Seek confirmation for action ($1).
seek_confirmation() {
	printf "\n${bold}${1-Proceed?}"
	read -p " (y/n): " -n 1
	printf "\n"
}

# Test whether or not an action should be done.
is_confirmed() {
	if [[ "$REPLY" =~ ^[Yy]$ ]]
	then
		return 0
	else
		return 1
	fi
}


