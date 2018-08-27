export EDITOR="vim"

# NVM stuff
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# zsh-completions loading
#fpath=(/usr/local/share/zsh-completions $fpath)

# workspaces
# set paths to commonly used directories
# set paths to commonly used directories
export XAMPP=/Applications/XAMPP/xamppfiles
export PRIMARY="/Users/williamseandon/Data/PrimaryWorkspace"
export ECLIPSE="/Users/williamseandon/Data/Eclipse Workspace"
export FINANCE="/Users/williamseandon/Data/Finance Workspace"
export PYTHON="/Users/williamseandon/Data/Python Workspace"
export BLOG="${PRIMARY}/nerdondon.github.io"
export HR="${PYTHON}/HackerRank Scripts"
export GOPATH="${PRIMARY}/go"

# set aliases to jump to workspaces
alias cdp='cd "${PRIMARY}"'
alias cdPrim='cd "${PRIMARY}"'
alias cdEclipse='cd "${ECLIPSE}"'
alias cdFinance='cd "${FINANCE}"'
alias cdBlog='cd "${BLOG}"'
alias cdXAMPP='cd "${XAMPP}"'
alias cdGo='cd "${GOPATH}"'
alias directoryAliases='echo -e "\033[1;35mCD ALIASES: cd[p | Go | Blog | Eclipse | Finance | XAMPP]\033[0m"'
directoryAliases

# js scratchpad
alias scratch='code "${HR}/"'
