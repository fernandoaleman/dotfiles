# ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# Try loading ASDF from the regular home dir location
if [ -f "$HOME/.asdf/asdf.sh" ]; then
  . "$HOME/.asdf/asdf.sh"
elif which brew >/dev/null &&
  BREW_DIR=$(brew --prefix asdf) &&
  [ -f "$BREW_DIR/libexec/asdf.sh" ]; then
  . "$BREW_DIR/libexec/asdf.sh"
fi

# Load starship prompt
eval "$(starship init zsh)"

# Load zoxide
eval "$(zoxide init zsh)"

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

export -U PATH
