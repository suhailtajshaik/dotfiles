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


# code-editors
brew cask install sublime-text
brew cask install visual-studio-code

# productivity
brew cask install dash
brew cask install macdown
brew cask install slack
brew cask install caffeine

# miscellaneous
brew cask install spotify
brew cask install caskroom/versions/java7