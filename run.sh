#!/bin/bash

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install all brew packages
while read package; do
  brew install $package
done < ./lists/brew

# set zsh as default shell
# will prompt for password
chsh -s $(which zsh)

# show changes to be made
# to .zshrc
diff ./shell/.zshrc ~/.zshrc

# install .bashrc configs
cp -R ./configs/shell/.bashrc.d ~
cp ./configs/shell/.bashrc ~

# install git configs
cp ./configs/git/.gitconfig ~
cp ./configs/git/.gitignore ~
