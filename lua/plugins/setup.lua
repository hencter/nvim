-- 插件配置 --
--------------

--|LSP|--
require("mason").setup{}
require("mason-lspconfig").setup({
  ensure_installed = {
    "sumneko_lua",
    "prosemd_lsp"
  },
  automatic_installation = true,
})

require("null-ls").setup{}


--|代码补全|--


--|工具|--
-- Markdown 预览
require('glow').setup{}
-- 图标
require'nvim-web-devicons'.setup {}
-- 文件管理器
require("nvim-tree").setup{}
-- 标签栏
require("bufferline").setup{}
-- 状态栏
require("lualine").setup({})
