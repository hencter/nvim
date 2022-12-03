local colorscheme = "tokyonight-moon"

-- tokyonight
-- nightfox
-- oxocarbon

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
