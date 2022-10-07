-- 插件配置 --
--------------

--|代码补全|--
require'plugins.cmp'
require('cmp-npm').setup{}

--|格式化|--
--缩进
require'plugins.indent'
--|语法|--
require'plugins.treesitter'

--|工具|--
-- Markdown 预览
require('glow').setup{}
-- 模糊查询
require'plugins.telescope'
-- 图标
require'nvim-web-devicons'.setup{}
-- 文件管理器
require("nvim-tree").setup{}
-- 项目管理
require('plugins.project')
-- 标签栏
require("bufferline").setup{}
-- 状态栏
require("lualine").setup({})
-- 开始页
require'plugins.alpha'
-- 媒体
require'plugins.clipboard-image'
