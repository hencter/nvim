-- 快捷键配置 --
----------------

local keymap = vim.keymap.set
local opts = { silent = true }

-- keymap("", "<Space>", "<Nop>", opts)
-- <leader> 替换为 <space>
vim.g.mapleader = " "

-- 模式·Modes
--   普通·normal_mode = "n",
--   插入·insert_mode = "i", 可视·visual_mode = "v",
--   可视行·visual_block_mode = "x",
--   终端·term_mode = "t",
--   命令·command_mode = "c",

-- 普通·Normal --
-- 更好的窗口导航
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- 方向键控制焦点外窗口大小
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- 标签页管理
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-q>", "<cmd>bdelete!<CR>", opts) -- <S-w> 容易误触

-- 清除搜索高亮
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- 插入·Insert --
-- 快速按下 jk 退出插入模式
keymap("i", "jk", "<ESC>", opts)

-- 可视·Visual --
-- 选中区域在控制 `<` `>` 缩进时保持可视状态
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- 插件快捷键 --
----------------
-- NvimTree
keymap("n", "<Space>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')
