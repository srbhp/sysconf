#!/bin/bash

sudo apt-get install npm ninja-build htop gdb clangd vim git cmake python3-venv luarocks tree-sitter-dev fd-find ripgrep kitty -y
sudo apt install shfmt shellcheck -y # bash-language-server will hang if these were missing
