dotfiles
===

Install
---
    # open zsh
    zsh

    # clone dotfiles
    git clone --recursive https://github.com/mtrovilho/dotfiles.git "$HOME/.dotfiles"

    # clone and install prezto
    git clone --recursive https://github.com/mtrovilho/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
    # convenience, please check respective github page for updates
    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
      ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done
    chsh -s /bin/zsh

    # install homebrew
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
    # tap brewdler
    brew tap Homebrew/brewdler
    # install brews
    brew brewdle --file="$HOME/.dotfiles/Brewfile-minimal"
    brew brewdle --file="$HOME/.dotfiles/Brewfile-development"

    # stow
    cd ~/.dotfiles
    stow -v --ignore=".DS_Store" ack bin ctags git ruby tmux
    stow -v --ignore=".DS_Store" --target="$HOME/.rbenv" rbenv
    stow -v --ignore=".DS_Store" --target="$HOME/.ssh" ssh

    # osx defaults
    cd ~/.dotfiles
    sudo ./osx-defaults.sh

References
---
dotfiles:

- [Mathias Bynens][mathiasbynens]
- [Zach Holman][holman]
- [Yan Pritzker][skdp]
- [Ryan Bates][ryanb]
- [thoughtbot, inc][thoughtbot]
- [Gary Bernhardt][garybernhardt]
- [Alexandre Fiori][fiorix]
- [Felippe Bueno][fbueno]

gitignore:

- [GitHub Ignores][github ignores]

zsh:

- [Prezto][prezto]

stow:

- [GNU Stow][stow]

homebrew:

- [Homebrew][brew]
- [Brewdler][brewdler]

vim:

- [Tim Pope][tpope]

---

[![Support freedom][fsf img]][fsf join]

[fsf join]: http://www.fsf.org/associate/support_freedom/join_fsf?referrer=10881
[fsf img]: http://static.fsf.org/fsforg/img/normal-image.png
[stow]: http://www.gnu.org/software/stow/
[brew]: https://github.com/Homebrew/homebrew
[brewdler]: https://github.com/Homebrew/homebrew-brewdler
[prezto]: https://github.com/sorin-ionescu/prezto
[github ignores]: https://github.com/github/gitignore
[mathiasbynens]: https://github.com/mathiasbynens/dotfiles
[holman]: https://github.com/holman/dotfiles
[skdp]: https://github.com/skwp/dotfiles
[ryanb]: https://github.com/ryanb/dotfiles
[thoughtbot]: https://github.com/thoughtbot/dotfiles
[garybernhardt]: https://github.com/garybernhardt/dotfiles
[tpope]: https://github.com/tpope
[fiorix]: https://github.com/fiorix/dotfiles
[fbueno]: https://github.com/fbueno/dotfiles
