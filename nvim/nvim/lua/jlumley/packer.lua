-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Tokyo night colour scheme
  use 'folke/tokyonight.nvim'

  use {
    'vimwiki/vimwiki',
    config = function()
    local l = {}
    l.syntax = 'markdown'
    l.ext = '.md'
    l.auto_diary_index = 1
    vim.g.vimwiki_list = {l}
    end
  }

  use 'airblade/vim-gitgutter'
  use 'sbdchd/neoformat'
  use 'stefandtw/quickfix-reflector.vim'
  use 'tomtom/tcomment_vim'
  use 'tpope/vim-fugitive'
  use 'vim-airline/vim-airline'
  use { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end}
  use {'neoclide/coc.nvim', branch = 'release'}

  use {
  "folke/todo-comments.nvim",
  requires = "nvim-lua/plenary.nvim",
  config = function()
    require("todo-comments").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
  }
end)
