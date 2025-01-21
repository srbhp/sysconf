#!/bin/bash

sudo apt-get install npm ninja-build htop gdb clangd vim git cmake python3-venv luarocks fd-find ripgrep kitty -y
sudo apt install shfmt shellcheck -y # bash-language-server will hang if these were missing
# latex
apt install texlive-publishers texlive-fontawesome5 texlive-fonts-extra texlive-luatex/stable
apt install tlp tlp-rdw # for laptops only
