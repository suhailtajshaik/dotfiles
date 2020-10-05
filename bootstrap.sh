#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;
mkdir -p ~/dev;
mkdir -p ~/dev/github;
mkdir -p ~/dev/bitbucket;


function doIt() {
	xcode-select --install
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
		--exclude "README.md" --exclude "LICENSE-MIT.txt" -avh --no-perms . ~;
	source ~/.bash_profile;
	rubyInstall
}

function rubyInstall() {
	echo "Installing Ruby..."
	curl -sSL https://get.rvm.io | bash -s stable
	source ~/.profile
	rvm requirements
	rvm install ruby-stable
	rvm use ruby-stable
	source ~/.bashrc
	gem install bundle
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
