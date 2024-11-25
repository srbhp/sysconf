#!/bin/bash

## Fedora

### Enable rpmfusion repository
sudo dnf install "https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm" \
	"https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm"

# Install the dependencies

dnf install vim gnuplot gcc-c++ texlive gcc-gfortran cmake chromium git kitty stix-fonts hdf5-devel \
	texlive-cantarell texlive-comfortaa kernel-devel make python3-devel mpfr-devel gmp-devel astyle \
	flawfinder cppcheck acpi ccls clangd clang
