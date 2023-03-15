-- Basic Configs
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')

vim.o.encoding = 'utf-8'
vim.o.hidden = true
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.wo.number = true
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

--nvim-tree (colocar no arquivo certo)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- set termguicolors to enable highlight groups
