#!/bin/bash

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install all brew packages
while read package; do
  brew install $package
done < ./lists/brew

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# show changes to be made
# to .zshrc
diff ./configs/shell/.zshrc ~/.zshrc

# install .bashrc configs
cp -R ./configs/shell/.bashrc.d ~
cp ./configs/shell/.bashrc ~

# install git configs
cp ./configs/git/.gitconfig ~
cp ./configs/git/.gitignore ~
