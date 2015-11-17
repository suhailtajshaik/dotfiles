# Node Version Manager
if [ -d ~/.nvm ]; then
	export NVM_DIR="~/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"  # This loads nvm
	nvm use stable
fi

# Ruby Version Manager
if [ -d ~/.rvm ]; then
	[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
fi


# Docker Version Manager
if [ -d ~/.dvm ]; then
	source ~/.dvm/dvm.sh
	dvm use default
fi

# VS Code Alias Function
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
