# asdf version manager
# https://asdf-vm.com

# This fixes a current issue with ruby-build installing ruby versions < 3.
export DLDFLAGS="-Wl,-undefined,dynamic_lookup"
export OPENSSL_CFLAGS="-Wno-error=implicit-function-declaration"
export CFLAGS=-Wno-error="implicit-function-declaration"

function chpwd {

  # Check if a .ruby-version file exists
  if [[ -f "$PWD/.ruby-version" ]]; then
    # ruby_version=`cat .ruby-version`
    ruby_version=$(<.ruby-version)
    ruby_version="${ruby_version#*-}"

    if ! asdf list ruby | grep -q $ruby_version; then
      while true; do
        read REPLY\?"Install ruby $ruby_version? [Yn] "
        case $REPLY in
          [Yy]* ) asdf install ruby $ruby_version; gem update --system; break;;
          [Nn]* ) break;;
          * ) echo "Please answer y or n.";;
        esac
      done
    fi
  fi
}

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit
