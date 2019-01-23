# dotfiles

## Prerequisites

fasd, a command-line productivity booster

```
sudo add-apt-repository ppa:aacebedo/fasd
sudo apt update
sudo apt install fasd
```

## For Mac

```sh
brew install git wget zsh
brew install node exa
brew install yarn
brew install fasd
brew install zsh-syntax-highlighting
brew cask install iina
```

In this current directory, run the following:

```sh
ln -s "$PWD/pure.zsh" "$HOME/.zfunctions/prompt_pure_setup"
ln -s "$PWD/async.zsh" "$HOME/.zfunctions/async"
```

For syntax highlighting, this is added to the end of .zshrc:

```
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```