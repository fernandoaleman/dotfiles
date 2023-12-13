# tmux session manager
if [ -d "$HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin" ]; then
  export PATH="$HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin:$PATH"
  export T_SESSION_NAME_INCLUDE_PARENT=true
fi
