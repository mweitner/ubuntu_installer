#!/bin/bash

apt update
apt upgrade

# ubuntu server comes with pre-installed openssh server
apt install openssh-server

#
# install terminal emulator, X system packages 
# there is no xorg-xinit instead best fit is xinit
#
apt install -y xorg rxvt-unicode xinit 

# i3 window manager and utilities
apt install -y i3-wm i3status i3lock dmenu \
  arandr sel zathura zathura-ps zathura-djvu zathura-cb imagemagic scrot \
  feh libanyevent-i3-perl

#both packages were already installed
apt install -y unzip git

#install editor neovim and mc (midnight commander), and hex editor
apt install neovim mc dhex

#install spacevim
curl -sLf https://spacevim.org/install.sh | bash

#optional mount utility
apt install -y udiskie

#we want to use zsh as our shell
apt install -y zsh

apt install -y dunst libnotify-bin

# install add-apt-repository utility
# needed to install diff-so-fancy
apt install -y software-properties-common
add-apt-repository ppa:aos1/diff-so-fancy
apt update -y
apt install -y diff-so-fancy

#tmux support
apt install tmux tmuxp

#install web broswers
apt install -y firefox qutebrowser

#install audio support
# where pavucontrol is the GUI support
apt install -y pulseaudio alsa-utils pavucontrol libncurses5-dev libncursesw5-dev

#install virtualization support
# using KVM instead of virtualbox
apt install virt-manager qemu vde2 ebtables dnsmasq bridge-utils \
  netcat-openbsd dmidecode

#utilities others
apt install arp-scan

