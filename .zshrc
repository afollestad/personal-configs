# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(git)

source $ZSH/oh-my-zsh.sh

NL=$'\n'
PS1=$'$NL%B%F{117}%3~%f%b% %{\e[3m%} $(git_prompt_info) %{\e[0m%}$NL%B%(?.%F{green}.%F{red})%(!.#.>)%f%b '
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""


alias gpu="git push -u"
alias gcm="git commit -am"
alias gpl="git pull"
alias gfe="git fetch -p"
alias clc="claude"
alias dev="cd ~/Development"
alias alveary="cd ~/Development/alveary"

stayawake() {
    if [ -n "$1" ]; then
        minutes_as_seconds="$(($1 * 60))"
        printf "\033]0;Staying awake for $1 minutes...\007"
        caffeinate -dims -t "$minutes_as_seconds"
    else
        printf '\033]0;Staying awake...\007'
        caffeinate -dims
    fi
}

export PATH="$HOME/.local/bin:$PATH"
