-- An incremental parsing system for programming tools
-- 一个用于编程工具的增量解析系统

local status_ok, treesitter = pcall(require, "nvim-treesitter")
if not status_ok then
	vim.notify("note found nvim-treesitter")
	return
end

local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	vim.notify("configs error")
	return
end

configs.setup {
  -- 安装 language parser
  -- :TSInstallInfo 命令查看支持的语言
  ensure_installed = {
    "lua",
    "markdown",
    "html",
    "css",
    "javascript",
    "vue",
  },
  -- 启用代码高亮功能
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  -- 启用增量选择
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      node_decremental = '<BS>',
      scope_incremental = '<TAB>',
    }
  },
  -- 启用基于Treesitter的代码格式化(=) . NOTE: This is an experimental feature.
  indent = {
    enable = true
  }
}
