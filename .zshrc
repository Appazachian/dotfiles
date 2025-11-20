if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

quickfind () {
	# find ./ $1 2>/dev/null
	# find ./ -name $1 -print 2>/dev/null
	# 2>/dev/null
	files=$(find . -name "$1*" 2>/dev/null)
	if [ -n "$files" ]; then
		echo "$files"
	else
		echo "No files found matching the pattern."
	fi

}

uninstallhomebrew () {
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
}


lsa () {
	ls -a
}

# brew bundle --file ~/ dotfiles/Brewfile

# change custom config diretory default from ~/.config
# export XDG_CONFIG_HOME="$HOME/.dotfiles"
