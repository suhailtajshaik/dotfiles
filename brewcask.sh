#!/bin/sh

# homebrew-cask
brew tap phinze/homebrew-cask
brew install brew-cask
brew tap caskroom/versions

# browser
brew cask install firefox
brew cask install google-chrome

# development
brew cask install vagrant
brew cask install virtualbox
brew cask install git-flow

# other
brew cask install spotify
brew cask install dash
brew cask install macdown
brew cask install slack
brew cask install caffeine
