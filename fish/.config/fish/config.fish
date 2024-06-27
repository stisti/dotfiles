if type -q starship
  starship init fish | source
end
if type -q direnv
  direnv hook fish | source
end

# eval ~/anaconda3/bin/conda "shell.fish" "hook" $argv | source

# Created by `pipx` on 2022-07-03 17:24:53
set PATH $PATH /home/sti/.local/bin

if test -d ~/.nix-profile
  . ~/.nix-profile/etc/profile.d/nix.fish
end
