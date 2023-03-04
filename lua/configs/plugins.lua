vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'navarasu/onedark.nvim' 
  use 'wbthomason/packer.nvim' -- Package manager
  use {'neovim/nvim-lspconfig'}
  use 'williamboman/mason.nvim'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
    
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
 	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-tree/nvim-web-devicons'
  use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
  use 'akinsho/toggleterm.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use "onsails/lspkind-nvim"
  use "L3MON4D3/LuaSnip"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/nvim-cmp"
  use "nvim-treesitter/nvim-treesitter"
  use "windwp/nvim-ts-autotag"
  use "windwp/nvim-autopairs"
  use "jose-elias-alvarez/null-ls.nvim"
  use "MunifTanjim/prettier.nvim"
  use "dinhhuy258/git.nvim"
  use "williamboman/mason-lspconfig.nvim"

  --Requiries
  require("toggleterm").setup()
  require('onedark').load()

end)





