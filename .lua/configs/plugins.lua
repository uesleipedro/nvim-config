vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'navarasu/onedark.nvim' 
	use 'wbthomason/packer.nvim' -- Package manager
  	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
	--Requires
	require('onedark').load()
	require'lspconfig'.pyright.setup{}


end)


