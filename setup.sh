#!/bin/bash

echo "===> Need do as root..."
# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `osx.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "===> Setting zsh as default..."
if [ $SHELL != '/bin/zsh' ]
then 
	chsh -s $(which zsh)
fi

echo "===> Installing Xcode Command Line Tools."
xcode-select --install

source $HOME/.zshrc
# Enable proxy for terminal, fix bad network problem.
setproxy

echo "Installing Homebrew ..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" -s --batch || {
  echo "Could not install homebrew" >/dev/stderr
  exit 1
}

source $HOME/.zshrc

brew update
brew tap homebrew/cask
brew tap homebrew/cask-fonts

echo "Installing font"
brew install --cask font-hack-nerd-font

echo "Installing apps .."
brew install htop \
exa \
bat \
jid  \
thefuck \
httpie \
hyperfine \
golang \
python \
python3 \
git
brew install --cask kap
brew install --cask pixel-picker

echo "Installing cask apps .."

echo "Installing nvm"

echo "Installing node LTS"

echo "Installing Oh-My-Zsh .."

echo "Installing zsh plugins ..."

echo "Copying files"

echo "Setting macos configuration defaults"

echo "Generating a ssh key"