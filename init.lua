-- 初始化 --
------------

-- 禁用 netrw
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require'options'		-- 选项
require'command'		-- 命令
require'keymaps'		-- 快捷键
require'plugins'		-- 插件
require'plugins.setup'		-- 插件配置
require'lsp'			-- LSP

