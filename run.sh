#!/bin/bash

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install all brew packages
while read package; do
  brew install $package
done < ./lists/brew

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install zsh–autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# show changes to be made
# to .zshrc
diff ./configs/shell/.zshrc ~/.zshrc

# install .bashrc configs
cp -R ./configs/shell/.bashrc.d ~
cp ./configs/shell/.bashrc ~

# install git configs
cp ./configs/git/.gitconfig ~
cp ./configs/git/.gitignore ~