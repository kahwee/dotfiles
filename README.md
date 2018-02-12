# dotfiles

## Prerequisites

fasd, a command-line productivity booster

```
sudo add-apt-repository ppa:aacebedo/fasd
sudo apt update
sudo apt install fasd
```


To setup zshrc for [prezto](https://github.com/sorin-ionescu/prezto):

```sh
ln -sf ./dotfiles/.zpreztorc .zpreztorc
ln -sf ./dotfiles/.zshrc .zshrc
```

## Brew tools

```sh
brew install git wget zsh
brew install node exa
brew install yarn
brew install fasd
brew cask install iina
```