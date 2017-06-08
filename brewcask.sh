#!/bin/sh

# homebrew-cask
brew tap phinze/homebrew-cask
brew install brew-cask
brew tap caskroom/versions

# browser
brew cask install firefox
brew cask install google-chrome

# development
brew cask install docker
brew cask install git-flow
brew cask install yarn

# code-editors
brew cask install sublime-text
brew cask install visual-studio-code

# productivity
brew cask install dash
brew cask install macdown
brew cask install slack
brew cask install KeepingYouAwake

# miscellaneous
brew cask install spotify
