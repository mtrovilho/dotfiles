# dotfiles

## Install
```sh
# clone dotfiles
git clone https://github.com/mtrovilho/dotfiles.git "$HOME/.dotfiles"

# stow
cd ~/.dotfiles
stow -v --ignore=".DS_Store" zsh git tmux lvim
#stow -v --ignore=".DS_Store" ack bin ctags git ruby tmux vim
#stow -v --ignore=".DS_Store" --target="$HOME/.rbenv" rbenv
#stow -v --ignore=".DS_Store" --target="$HOME/.ssh" ssh
```


## Links
- [iTerm2](https://iterm2.com/)
- [Homebrew](https://brew.sh/)
- [Starship](https://starship.rs/)
- [asdf](https://asdf-vm.com/)
- [LazyGit](https://github.com/jesseduffield/lazygit)
- [LunarVim](https://www.lunarvim.org/)
- [Fira Code Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode)


## Snippets

### Change shell to zsh
```sh
chsh -s /bin/zsh
```

### asdf
```sh
asdf plugin add golang
asdf plugin add lua
asdf plugin add nodejs
asdf plugin add python
asdf plugin add rust

asdf install golang 1.19
asdf install lua 5.4.4
asdf install nodejs lts
asdf install python 3.10.6
asdf install rust stable
```

### pnpm
```sh
npm install -g pnpm
```

### Starship
```sh
cargo install starship --locked
```

### Homebrew
```sh
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install asdf bat fd fzf htop lazygit mosh ncdu neovim ripgrep starship stow tmux
brew install --cask font-fira-code-nerd-font font-fira-mono-nerd-font iterm2

# MAY NOT WORK - NEEDS UPDATE
# tap brewdler
brew tap Homebrew/brewdler
# install brews
brew brewdle --file="$HOME/.dotfiles/Brewfile-minimal"
brew brewdle --file="$HOME/.dotfiles/Brewfile-development"
```

### macOS defaults
```sh
# MAY NOT WORK - NEEDS UPDATE
cd ~/.dotfiles
sudo ./osx-defaults.sh
```


## References
dotfiles:
- [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
- [Zach Holman](https://github.com/holman/dotfiles)
- [Yan Pritzker](https://github.com/skwp/dotfiles)
- [Ryan Bates](https://github.com/ryanb/dotfiles)
- [thoughtbot, inc](https://github.com/thoughtbot/dotfiles)
- [Gary Bernhardt](https://github.com/garybernhardt/dotfiles)
- [Alexandre Fiori](https://github.com/fiorix/dotfiles)
- [Felippe Bueno](https://github.com/fbueno/dotfiles)

gitignore:
- [GitHub Ignores](https://github.com/github/gitignore)

stow:
- [GNU Stow](http://www.gnu.org/software/stow/)

homebrew:
- [Homebrew](https://github.com/Homebrew/homebrew)
- [Brewdler](https://github.com/Homebrew/homebrew-brewdler)


---

[![Support freedom][fsf img]][fsf join]

[fsf join]: http://www.fsf.org/associate/support_freedom/join_fsf?referrer=10881
[fsf img]: http://static.fsf.org/fsforg/img/normal-image.png
