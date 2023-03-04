-- import files list
local core_conf_files = {
	"plugins.lua",
	"maps.lua",
	"basic.lua",
	"lualine.lua",
	"nvim-autopairs-config.lua",
	"lspkind-nvim-config.lua",
	"nvim-treesitter-config.lua",
	"nvim-ts-autotag-config.lua",
	"null-ls-config.lua",
	"prettier-config.lua",
	"git-config.lua",
	"mason-lspconfig-config.lua",
	"lspconfig-config.lua",
	"tsserver-config.lua",
	"nvim-tree-config.lua",
}

--import files
for _, name in ipairs(core_conf_files) do
  local path = string.format("%s/lua/configs/%s", vim.fn.stdpath("config"), name)
  local source_cmd = "source " .. path
  vim.cmd(source_cmd)
end
