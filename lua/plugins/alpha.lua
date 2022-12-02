--| 起始页 |--
--------------

local alpha = require'alpha'
local dashboard = require "alpha.themes.dashboard"

dashboard.section.header.val = {
  [[ _   _ ___ _  __  _  ]],
  [[(_)_(_) _ \ |(())/ | ]],
  [[ / _` \___/_/ _ '| | ]],
  [[| (_| |___|| (_| |_| ]],
  [[ \__,_|   | \__,_| _ ]],
  [[          |_|     )_)]],
}

dashboard.section.buttons.val = {
  dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
  dashboard.button("e", " " .. " New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("p", " " .. " Find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
  dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", " " .. " Find text", ":Telescope live_grep <CR>"),
  dashboard.button("c", " " .. " Config", ":e ~/.config/nvim/init.lua <CR>"),
  dashboard.button("q", " " .. " Quit", ":qa<CR>"),
}

dashboard.section.footer.val = "hencter.top or hencte.top"

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"
dashboard.opts.opts.noautocmd = true

alpha.setup(dashboard.opts)
