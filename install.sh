sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle install --file=~/dotfile/Brewfile
mkdir -p ~/.claude/themes && ln -sf ~/dotfile/claude/themes/carbonfox.json ~/.claude/themes/carbonfox.json
