#!/bin/bash

# create symlinks
ln -s "${PWD}/bashrc" "${HOME}/.bashrc"
ln -s "${PWD}/kitty" "${HOME}/.config/"
ln -s "${PWD}/matplotlib" "${HOME}/.config/"
ln -s "${PWD}/clangd" "${HOME}/.config/"
ln -s "${PWD}/gdbinity" "${HOME}/.config/"
# Clone personal neovim config
cd "${HOME}/.config" || exit
git clone https://github.com/srbhp/nvim
# echo "Downloading Kitty"
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
#

echo "Downloading Nerd fonts"
wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraMono.zip" -O ~/Downloads/FiraMono.zip
mkdir ~/.fonts
unzip ~/Downloads/FiraMono.zip -d ~/.fonts
rm ~/Downloads/FiraMono.zip

echo "Installing Nerd fonts"
fc-cache -fv
# instal bash-language-server luals vim-language-server
sudo npm install -g bash-language-server
sudo npm install -g vim-language-server
# # install lua_ls
mkdir -p ~/software/
cd ~/software/ || exit
git clone https://github.com/LuaLS/lua-language-server
cd lua-language-server || exit
./make.sh
ln -s "${PWD}/bin/lua-language-server" "$HOME/.local/bin/"
