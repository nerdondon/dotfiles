alias reload!='. ~/.zshrc'

alias c..="cd .."
alias c...="cd ../.."

# set paths to commonly used directories
export XAMPP=/Applications/XAMPP/xamppfiles
export APTANA="~/Data/Aptana Studio Workspace"
export ECLIPSE="~/Data/Eclipse Workspace"
export FINANCE="~/Data/Finance Workspace"
export NODE="~/Data/NodeJS Workspace"
export BLOG="${APTANA}/nerdondon.github.io"
alias cdWeb='cd "${APTANA}"'
alias cdEclipse='cd "${ECLIPSE}"'
alias cdFinance='cd "${FINANCE}"'
alias cdNode='cd "${NODE}"'
alias cdBlog='cd "${BLOG}"'
alias cdXAMPP='cd "${XAMPP}"'
alias directoryAliases='echo -e "\033[1;35mCD ALIASES: cd[Web | Blog | Eclipse | Finance | Node | XAMPP]\033[0m"'

# Aliases to make ls easier to use in different modes, taken from Red Hat EL 6
alias ls='ls -GFh'
alias ll="ls -ll"
alias la='ls -a'
alias lla="ll -a"

# Alias to set color in grep
alias grep="grep --color=auto"

# Heads and tails :D
# From paulmillr/dotfiles
alias -g f2='| head -n 2'
alias -g f10='| head -n 10'
alias -g l10='| tail -n 10'
