alias reload='source ~/.zshrc'

# tmux
alias tmuxa='tmux attach -t'
alias tmuxn='tmux new-session -s'
alias tmuxl='tmux ls'

# tmuxinator
alias mux='tmuxinator'
alias editmux='code ~/.tmuxinator'

# code

# ssh
alias sshdev=''

# misc
# from: https://remysharp.com/2018/08/23/cli-improved
alias cat='bat'
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias help='tldr'

# Heads and tails :D
# From paulmillr/dotfiles
alias -g f2='| head -n 2'
alias -g f10='| head -n 10'
alias -g l10='| tail -n 10'