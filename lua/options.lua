--| vim.o 行为类似于 :se[t] [option]
-------------------------------------
local opt = vim.opt

-- 突出显示光标行
opt.cul = true
-- 设置行号
opt.nu = true
-- 在搜索模式中忽略大小写
opt.ignorecase = true
-- 智能大小写
opt.smartcase = true
-- 智能缩进
opt.smartindent = true
-- 制表符长度
opt.shiftwidth = 2
-- 允许 Neovim 访问系统剪切板
opt.cb = "unnamedplus"
-- 允许在 Neovim 中使用鼠标
opt.mouse = "a"
-- 禁用换行
opt.wrap = false

-- 一般不开
-- 替换制表符为 2 个空格
-- opt.tabstop = 2

opt.termguicolors = true



--| vim.wo: 适用于 window-local 选项，行为类似于 :let &l:{option-name}
----------------------------------------------------------------------
local wo = vim.wo

-- 开启 Folding
wo.foldmethod = 'expr'
wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
wo.foldlevel = 99
