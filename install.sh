#!/usr/bin/env nix-shell
#!nix-shell -i bash --packages stow
export LANG=C
stow nix
stow nvim
stow direnv
