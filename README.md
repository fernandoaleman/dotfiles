# dotfiles.fish

A set of configuration files to enhance the terminal experience.

## Requirements

Setup your [mac](https://github.com/fernandoaleman/mac) before installing these
configuration files.

## Install

Clone onto your mac

```
git clone https://github.com/fernandoaleman/dotfiles.fish ~/dotfiles
```

Install the dotfiles

```
env RCRC="$HOME/dotfiles/rcrc" rcup
```

Once you run the command above, you can run `rcup` without the `RCRC` env
variable being set

## Update

Update the git repo and then run

```
rcup
```

## Customizations

Add your own customizations

```
mkdir ~/dotfiles-local
```

Put your customizations in the `~/dotfiles-local` directory with a `.local`
extension

* `~/dotfiles-local/config/fish/config.fish.local`
* `~/dotfiles-local/config/fish/conf.d/abbr.fish.local`
* `~/dotfiles-local/config/fish/conf.d/aliases.fish.local`
* `~/dotfiles-local/config/fish/conf.d/*`
* `~/dotfiles-local/config/git/git_template.local/*`
* `~/dotfiles-local/config/git/config.local`
* `~/dotfiles-local/config/tmux/tmux.conf.local`
* `~/dotfiles-local/laptop.local`

## What This Sets Up

* [alacritty](https://alacritty.org)
* [fish](https://fishshell.com)
* [git](https://git-scm.com/)
* [gitmux](https://github.com/arl/gitmux)
* [homebrew](https://brew.sh)
* [lazygit](https://github.com/jesseduffield/lazygit)
* [lazyvim](https://www.lazyvim.org)
* [lf](https://pkg.go.dev/github.com/gokcehan/lf)
* [rcm](https://github.com/thoughtbot/rcm)
* [starship](https://starship.rs)
* [tmux](https://github.com/tmux/tmux)
