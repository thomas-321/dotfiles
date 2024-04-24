#!/bin/bash

#ln -s example_fcc_file.txt fcc_link.txt

read -r -p "Running this script will remove data if a link will be created at that location. Do you wwant to continue? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    echo "continuing script"
else
    echo "terminating script"
    exit 1
fi

# link the repo nvim folder to ~/.config/nvim
rm -rf ~/.config/nvim
ln -s  ~/repos/03-personal/dotfiles/nvim/lazy/nvim/ ~/.config/ 

# link the repo tmux folder to ~/.tmux
rm -rf ~/.tmux.conf
ln -s ~/repos/03-personal/dotfiles/.tmux.conf ~/.tmux.conf

# link the repo .gitconfig file to ~/.gitconfig
rm -rf $HOME/.gitconfig
ln -s ../.gitconfig $HOME/.gitconfig

# link the repo clangd config file to ~/.clangd
rm -rf $HOME/.clangd
mkdir -p $HOME/.clangd
ln -s ../clangd-config/config.yaml $HOME/.clangd/config.yaml

echo "Symlinks created successfully!"
echo "To remove them run the 'script_remove_symlinks.sh' script"


