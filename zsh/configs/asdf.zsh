# asdf version manager
# https://asdf-vm.com

# This fixes a current issue with ruby-build installing ruby versions < 3.
export DLDFLAGS="-Wl,-undefined,dynamic_lookup"
export OPENSSL_CFLAGS="-Wno-error=implicit-function-declaration"
export CFLAGS=-Wno-error="implicit-function-declaration"

function chpwd {
  if [[ -f "$PWD/.ruby-version" ]]; then
    ruby_version=$(<.ruby-version)
    ruby_version="${ruby_version#*-}"

    # Check if the Ruby version is installed with asdf
    if ! asdf list ruby | grep -q "$ruby_version"; then
      while true; do
        read -p "Install ruby $ruby_version? [Yn] " REPLY
        case $REPLY in
          [Yy]* ) asdf install ruby "$ruby_version"; gem update --system; break;;
          [Nn]* ) break;;
          * ) echo "Please answer y or n.";;
        esac
      done
    fi

    # Extract the major version number
    ruby_major_version="${ruby_version%%.*}"

    # Fix lazyvim for older versions of Ruby < 3
    # Check if the ruby version is less than 3 and the symlink doesn't already exist
    if [[ "$ruby_major_version" -lt 3 && ! -e "$PWD/.lazy.lua" ]]; then
      # Check if ~/.lazy.lua file or symlink exists
      if [[ -e "$HOME/.lazy.lua" || -L "$HOME/.lazy.lua" ]]; then
        ln -sf "$HOME/.lazy.lua" "$PWD/.lazy.lua"
        echo "Symlink to ~/.lazy.lua created in $PWD"
      fi
    fi
  fi
}

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit
