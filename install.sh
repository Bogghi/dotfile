#!/usr/bin/env bash
# macOS bootstrap. Windows: see install.ps1
set -e
D=~/dotfile
[ -d ~/.oh-my-zsh ] || sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
command -v brew >/dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle install --file=$D/Brewfile
LG=~/Library/Application\ Support/lazygit
mkdir -p ~/.config ~/.claude/themes "$LG"
ln -sfn $D/.zshrc ~/.zshrc
ln -sfn $D/.gitconfig ~/.gitconfig
ln -sfn $D/nvim ~/.config/nvim
ln -sfn $D/helix ~/.config/helix
ln -sfn $D/karabiner-mac-keyboard-no-swap/karabiner ~/.config/karabiner
ln -sf $D/lazygit/config.yml "$LG/config.yml"
ln -sf $D/claude/themes/carbonfox.json ~/.claude/themes/carbonfox.json
mkdir -p ~/.config/sqlit/themes
ln -sf $D/sqlit/carbonfox.json ~/.config/sqlit/themes/carbonfox.json
