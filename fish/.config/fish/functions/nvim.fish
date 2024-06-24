function nvim --description 'NvChad'
  nix-shell -p neovim ripgrep --run "nvim $argv"
end
