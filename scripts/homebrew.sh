#!/usr/bin/env bash

if command -v brew >/dev/null 2>&1; then
    echo "Homebrew is already installed"
else
    echo "Installing Homebrew"

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    echo >>$HOME/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>$HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

FORMULAE=(
    git
    nvim
    gopass
    gpg
)

CASKS=(
    alacritty
    firefox
    yubico-authenticator
    karabiner-elements
    font-jetbrains-mono-nerd-font
)

for pkg in "${FORMULAE[@]}"; do
    brew install "$pkg"
done

for cask in "${CASKS[@]}"; do
    brew install --cask "$cask"
done
