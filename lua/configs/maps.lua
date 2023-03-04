local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

--nvim-tree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

--Telescope
--local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<shift>ff', builtin.find_files, {})
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.api.nvim_set_keymap('n', '<S-f>', ':Telescope find_files<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<C-t>', ':ToggleTerm<CR>', {noremap = true, silent = true})
