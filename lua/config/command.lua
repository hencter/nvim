--| vim.cmd |--
---------------

local cmd = vim.cmd

cmd("colorscheme nightfox")


cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]
