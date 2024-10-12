# Dev Stash

A stash for all dev configs:

- neovim config
- tmux config
- iterm2 config
- .zshrc config
- Homebrew dump

## Installation

```bash
mkdir ~/.config
cd ~/.config
git clone git@github.com:anirudhaxe/dev-stash.git .
```

## Homebrew

Setup the packages using Homebrew Brewfile:

```bash
brew bundle --file=~/.config/brew-dump/Brewfile
```

To update the Homebrew Brewfile:

```bash
brew bundle dump --file=~/.config/brew-dump/Brewfile
```

## zsh

Install zshrc configuration by removing the existing .zshrc file and creating a symbolic link:

```bash
rm ~/.zshrc
ln -s ~/.config/zsh-conf/.zshrc ~/.zshrc
source ~/.zshrc
```

## iterm2

In iterm2 installation, point to custom configuration directory by:

- Open iterm2
- Use `cmd+,` to open settings
- Under `General`, go to `Settings`
- check `Load settings from a custom folder or URL`
- Add path: `~/.config/iterm2-conf`
- In `Save changes` selectable, select `Automatically`

---
