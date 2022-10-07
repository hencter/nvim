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
-- 2 格缩进
opt.shiftwidth = 2
-- 制表符宽度
opt.tabstop = 2
-- 允许 Neovim 访问系统剪切板
opt.cb = "unnamedplus"
-- 允许在 Neovim 中使用鼠标
opt.mouse = "a"
-- 禁用换行
opt.wrap = false

opt.list = true
-- 将空格显示为 `⋅` 符号
opt.listchars:append "space:⋅"



