-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Tokyo night colour scheme
  use 'folke/tokyonight.nvim'

  use 'airblade/vim-gitgutter'
  use 'sbdchd/neoformat'
  use 'stefandtw/quickfix-reflector.vim'
  use 'tomtom/tcomment_vim'
  use 'tpope/vim-fugitive'
  use { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end}
  use {'neoclide/coc.nvim', branch = 'release'}

end)
