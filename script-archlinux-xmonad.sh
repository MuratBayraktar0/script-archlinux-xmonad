#!/bin/bash

# Check if Git is installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed, installing..."
    sudo pacman -S --noconfirm git
fi

# Clone the xmonad-xmobar-config repository
echo "Cloning the xmonad-xmobar-config repository..."
git clone git@github.com:MuratBayraktar0/xmonad-xmobar-config.git

# Move the .xmobarrc file
echo "Moving the .xmobarrc file..."
mv xmonad-xmobar-config/.xmobarrc ~/.xmobarrc

# Create the .xmonad directory and move the xmonad.hs file
echo "Creating the .xmonad directory and moving the xmonad.hs file..."
mkdir ~/.xmonad
mv xmonad-xmobar-config/xmonad.hs ~/.xmonad/xmonad.hs

# Remove the cloned directory
echo "Removing the cloned directory..."
rm -rf xmonad-xmobar-config

echo "Process completed."