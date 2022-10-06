-- 插件配置 --
--------------

--|代码补全|--
--TODO
require'plugins.cmp'
require('cmp-npm').setup{}

--|语法|--
require'plugins.treesitter'

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
