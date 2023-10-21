#!/usr/bin/env bash

script_dir=$(realpath $(dirname "${BASH_SOURCE[0]}"))


function alias_script() {

	if [ ! -e "$XDG_BIN_HOME/$1" ]; then

		ln $(realpath "$script_dir/$1") "$XDG_BIN_HOME/$1"
	fi
}


alias_script "gtk.sh"
