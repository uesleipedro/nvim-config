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

nvim_lsp.lua_ls.setup{}

--PHP
nvim_lsp.intelephense.setup({
    settings = {
        intelephense = {
            stubs = {
                "bcmath",
                "bz2",
                "calendar",
                "Core",
                "curl",
                "zip",
                "zlib",
                "wordpress",
                "woocommerce",
                "acf-pro",
                "wordpress-globals",
                "wp-cli",
                "genesis",
                "polylang"
            },
            environment = {
              includePaths = '/home/ueslei/.config/composer/vendor/php-stubs/'},
            files = {
                maxSize = 5000000;
            };
        };
    }
});
