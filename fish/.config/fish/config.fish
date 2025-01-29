if test -d ~/.nix-profile
  source ~/.nix-profile/etc/profile.d/nix.fish
end
if type -q starship
  starship init fish | source
end
if type -q direnv
  direnv hook fish | source
end

# eval ~/anaconda3/bin/conda "shell.fish" "hook" $argv | source

# Created by `pipx` on 2022-07-03 17:24:53
set PATH $PATH /home/$USER/.local/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
    eval (keychain --eval --agents ssh)
end
