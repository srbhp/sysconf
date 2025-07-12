{ pkgs ? import <nixpkgs> {} }:

let
  nerdFonts = pkgs.fetchurl {
    url = "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraMono.zip";
    sha256 = "ef37b99164614ad518721a8f3b1a1f654bac060dba820e73fa3b3e4cce8841e4"; # Replace with the actual hash
  };

  
in

pkgs.mkShell {
  buildInputs = [
    pkgs.acpi
    pkgs.astyle
    pkgs.bash-language-server
    pkgs.ccls
    pkgs.chromium
    pkgs.clang
    pkgs.clang-tools
    pkgs.cmake
    pkgs.cppcheck
    pkgs.curl
    pkgs.fd
    pkgs.flawfinder
    pkgs.gcc
    pkgs.gdb
    pkgs.git
    pkgs.gmp
    pkgs.gnuplot
    pkgs.htop
    pkgs.kitty
    pkgs.lm_sensors
    pkgs.lua-language-server
    pkgs.luarocks
    pkgs.most
    pkgs.mpfr
    pkgs.ninja
    pkgs.nodejs
    pkgs.python3
    pkgs.ripgrep
    pkgs.shellcheck
    pkgs.shfmt
    pkgs.texlivePackages.cantarell
    pkgs.texlivePackages.combine 
    pkgs.texlivePackages.comfortaa
    # pkgs.texlivePackages.extra-fonts
    pkgs.texlivePackages.fontawesome5
    pkgs.texlivePackages.luatex
    pkgs.tlp
    # pkgs.tlp.rdw  
    pkgs.unzip
    pkgs.vim
    pkgs.vim-language-server
  ];

  shellHook = ''
    # Create symlinks
    ln -s bashrc $HOME/.bashrc
    ln -s ${./kitty} $HOME/.config/
    ln -s ${./matplotlib} $HOME/.config/
    ln -s ${./clangd} $HOME/.config/
    ln -s gdbinity  $HOME/.config/

    # Clone personal neovim config
    if [ ! -d "$HOME/.config/nvim" ]; then
      git clone https://github.com/srbhp/nvim $HOME/.config/nvim
    fi

    # Install Nerd Fonts
    mkdir -p ~/.fonts
    unzip ${nerdFonts} -d ~/.fonts
    fc-cache -fv


  '';
}

