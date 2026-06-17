now() {
  printf "%s" "$(date -u +%FT%H:%M:%SZ)"
}

# fnm
eval "$(fnm env --use-on-cd --shell zsh)"

# homebrew
alias brewup="brew up; brew upgrade -g; brew cleanup; brew doctor"
eval "$(/opt/homebrew/bin/brew shellenv)"

# go
export GOPATH="$HOME/.local/go"
if [ -d "$GOPATH" ]; then
    export GOBIN="$GOPATH/bin"
    export PATH="$GOBIN:$PATH"
fi

# llama.cpp
export LLAMA_ARG_PORT=7000

# odin
export ODINPATH="$HOME/.local/odin"
if [ -d "$ODINPATH" ]; then
    export ODINBIN="$ODINPATH/bin"
    export PATH="$ODINPATH:$ODINBIN:$PATH"
fi

# rust
export PATH="$(brew --prefix rustup)/bin:$PATH"

# sqlite
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"

# uv
export PATH="/Users/nick.zanghi/.local/bin:$PATH"

# zig
export ZIGPATH="/usr/local/zig"
if [ -d "$ZIGPATH" ]; then
    export PATH="$ZIGPATH:$PATH"
fi


