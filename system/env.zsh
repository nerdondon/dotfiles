# source node version manager
source $(brew --prefix nvm)/nvm.sh

# Set directory that nvm uses to install node binaries
export NVM_DIR=~/.nvm
nvm use default

# run pip only if there is a virtualenv currently activated
#export PIP_REQUIRE_VIRTUALENV=true

# Set defualt terminal editor to nano
export EDITOR=nano
