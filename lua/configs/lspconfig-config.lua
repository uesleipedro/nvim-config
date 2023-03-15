local nvim_lsp = require "lspconfig"
nvim_lsp.tailwindcss.setup {}
require'lspconfig'.phpactor.setup{}

nvim_lsp.eslint.setup({
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
})
require'lspconfig'.eslint.setup{}


nvim_lsp.tsserver.setup {
    root_dir = nvim_lsp.util.root_pattern("yarn.lock", "lerna.json", ".git"),
    on_attach = on_attach,
    settings = {documentFormatting = true}
}
