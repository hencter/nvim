--|LSP|--
-- lsp 需要配置服务，输入以下命令查看相关语言的配置
-- :help lspconfig-all

--|LSP 管理器|--
require("mason").setup{}
require("mason-lspconfig").setup({
  ensure_installed = {
    "sumneko_lua",
    "prosemd_lsp",
  },
  automatic_installation = true,
})

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Lua
require'lspconfig'.sumneko_lua.setup{
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
	-- 添加 `vim` 全局变量
        globals = {'vim'},
      },
    },
  },
  capabilities = capabilities,
}

-- Markdown
require'lspconfig'.prosemd_lsp.setup{
  capabilities = capabilities,
}

