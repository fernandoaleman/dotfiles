# arm64 or x86_64
arch="$(uname -m)"

if [ "$arch" = "arm64" ]; then
  BREW="/opt/homebrew"
else
  BREW="/usr/local"
fi

export HOMEBREW_PREFIX="$BREW";
export HOMEBREW_CELLAR="$BREW/Cellar";
export HOMEBREW_REPOSITORY="$BREW";
export PATH="$BREW/bin:$BREW/sbin${PATH+:$PATH}";
export MANPATH="$BREW/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="$BREW/share/info:${INFOPATH:-}";

# To opt in to Homebrew analytics, `unset` this in ~/.zshrc.local .
# Learn more about what you are opting in to at
# https://docs.brew.sh/Analytics
export HOMEBREW_NO_ANALYTICS=1
