local sumneko_root_path = '/usr/lib/lua-language-server'
local sumneko_binary = sumneko_root_path .. '/bin/lua-language-server'
--local sumneko_binary = '/usr/bin/lua-language-server'

--/usr/lib/lua-language-server/bin/lua-language-server

local m = {}

m.config = {
  cmd = {sumneko_binary, '-E', sumneko_root_path .. '/main.lua'},
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = vim.split(package.path, ';')
      },
      diagnostics = {
        globals = {'vim'}
      },
      workspace = {
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
          ['/usr/share/awesome/lib'] = true,
        }
      }
    }
  }
}

return m
