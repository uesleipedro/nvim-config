local opts = { noremap=true, silent=true }

vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
vim.keymap.set("i","jh","<esc>",{noremap=true})
vim.keymap.set("i","kj","<esc>",{noremap=true})
vim.keymap.set("n","<C-s>",":update<CR>",{noremap=true, silent = true})

--nvim-tree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

--move line or selection
vim.cmd [[
  nnoremap <A-j> :m .+1<CR>==
  nnoremap <A-k> :m .-2<CR>==
  inoremap <A-j> <Esc>:m .+1<CR>==gi
  inoremap <A-k> <Esc>:m .-2<CR>==gi
  vnoremap <A-j> :m '>+1<CR>gv=gv
  vnoremap <A-k> :m '<-2<CR>gv=gv
]]

vim.api.nvim_set_keymap('n', '<C-t>', ':ToggleTerm<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-f>', ':Telescope find_files<CR>', {noremap = true, silent = true})
