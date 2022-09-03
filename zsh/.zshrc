[[ ! -f /opt/homebrew/bin/brew ]] || eval "$(/opt/homebrew/bin/brew shellenv)"
if (( $+commands[brew] )); then
    [[ ! -f "$(brew --prefix asdf)/libexec/asdf.sh" ]] || source "$(brew --prefix asdf)/libexec/asdf.sh"
    [[ ! -d "$(brew --prefix)/share/zsh/site-functions" ]] || fpath=("$(brew --prefix)/share/zsh/site-functions" $fpath)
fi

[[ ! -f ~/.asdf/asdf.sh ]] || source ~/.asdf/asdf.sh
[[ ! -f  ~/.asdf/asdf.sh ]] || fpath=(${ASDF_DIR}/completions $fpath)

if (( $+commands[starship] )); then
    eval "$(starship init zsh)"
fi

export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"

ls --version &>/dev/null
if [ $? -eq 0 ]; then
    lsflags="--color --group-directories-first -F"
else
    lsflags="-GF"
    export CLICOLOR=1
fi

alias ls="ls ${lsflags}"
alias l="ls ${lsflags} -1"
alias ll="ls ${lsflags} -lh"
alias la="ls ${lsflags} -lha"
alias h="history"
alias hg="history -1000 | grep -i"
alias ,="cd .."
alias m="less"
if (( $+commands[lvim] )); then
    alias vi="lvim"
    alias vim="lvim"
elif (( $+commands[nvim] )); then
    alias vi="nvim"
    alias vim="nvim"
fi

export EDITOR=vim

autoload -Uz compinit && compinit
setopt complete_in_word
setopt auto_menu
setopt autocd
