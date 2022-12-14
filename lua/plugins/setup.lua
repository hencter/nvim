-- 插件配置 --

--|代码|--
-- 自动补全
require("plugins.cmp")
-- 缩进
require("plugins.indent")
-- 语法
require("plugins.treesitter")
-- Git
require("plugins.gitsigns")
-- 自动配对
require("plugins.autopairs")
-- Code Runner
-- 终端
require("plugins.toggleterm")
-- Debugging
require("plugins.dap")

--|工具|--
-- 使用 Glow 预览 Makrdown 文件
require("glow").setup({})
-- 模糊查询
require("plugins.telescope")
-- 图标
require("nvim-web-devicons").setup({})
-- 文件管理器
require("plugins.nvim-tree")
-- 项目管理
require("plugins.project")
-- 标签栏
require("bufferline").setup({})
-- 状态栏
require("plugins.lualine")
-- 开始页
require("plugins.alpha")

--|Bars and Lines|--
-- Cursorline
require("plugins.illuminate")

-- 主题配置
require("plugins.colorscheme")
