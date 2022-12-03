-- 缩进插件配置
local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
  return
end

-- 为缩进配置颜色
vim.opt.termguicolors = true
-- 颜色列表
vim.cmd [[highlight Rose guifg=#FDA4AF gui=nocombine]]
vim.cmd [[highlight Lime guifg=#BEF264 gui=nocombine]]
vim.cmd [[highlight Green guifg=#4ADE80 gui=nocombine]]
vim.cmd [[highlight Teal guifg=#5EEAD4 gui=nocombine]]
vim.cmd [[highlight Indigo guifg=#818CF8 gui=nocombine]]
vim.cmd [[highlight Yellow guifg=#FDE047 gui=nocombine]]

indent_blankline.setup {
  -- space_char_blankline = " ",
	char_highlight_list = {
		"Rose",
		"Lime",
		"Green",
		"Teal",
		"Indigo",
		"Yellow",
	},
  -- show_trailing_blankline_indent = false,
  use_treesitter = true,
  show_current_context = true,
  show_first_indent_level = true,
  show_current_context_start = true,
  buftype_exclude = { "terminal", "nofile" },
  filetype_exclude = {
    "help",
    "packer",
    "NvimTree",
  },
}
