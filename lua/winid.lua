--| vim.wo: 适用于 window-local 选项，行为类似于 :let &l:{option-name}
----------------------------------------------------------------------
local wo = vim.wo

-- 开启 Folding
wo.foldmethod = 'expr'
wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
wo.foldlevel = 99
