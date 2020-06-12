# make a directory and cd into it
mkcd() { mkdir -p "$@" && cd "$@"; }

# Get PID of process listening on a port
getPortPid() {
  sudo lsof -n -i :$1 | grep LISTEN
}
