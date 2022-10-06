--------------
--|插件管理|-- 
--------------

local packer = require('packer')

--|Packer 自定义初始化|--
-------------------------
packer.init({
  -- 使用 SSH 的方式连接 Github 服务器以提升克隆速度
  git = {
    depth = 1,
    default_url_format = 'git@github.com:%s'
  },
  -- 浮窗打开 Packer 管理界面
  display = {
    open_fn = function()
      return require('packer.util').float {
	border = 'rounded'
      }
    end,
  }
})

--|首次加载 Packer|--
---------------------
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

--|首次初始化 Packer|--
local packer_bootstrap = ensure_packer()

return packer.startup(function(use)
  -----------------------------------------------------------------------------
  ---------------------------------|开始|--------------------------------------

  --|包管理器|--
  use {'wbthomason/packer.nvim'}

  --|LSP|--
  use {
    -- 官方 LSP 配置
    {'neovim/nvim-lspconfig'},
    -- LSP 安装器：Mason
    {"williamboman/mason.nvim"},
    -- Mason config
    {"williamboman/mason-lspconfig.nvim"},
    -- null-ls
    -- TODO {"jose-elias-alvarez/null-ls.nvim"},
  }

  --|代码补全|--
  use {
    -- cmp
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'},
    {'hrsh7th/cmp-nvim-lua'},
    -- snippet 引擎
    {"L3MON4D3/LuaSnip", tag = "v1.*"},
    {'saadparwaiz1/cmp_luasnip'},
    -- 依赖管理
    {'David-Kunz/cmp-npm'},
    {'hrsh7th/cmp-emoji'},
    -- requires
    {"nvim-lua/plenary.nvim"},
  }

  --|语法|--
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  --|调试|--
  use {'mfussenegger/nvim-dap'}

  --|工具|--
  use {
    -- Markdown/(LaTex)
    {"ellisonleao/glow.nvim"},
    -- 模糊查找器
    -- TODO {"vijaymarupudi/nvim-fzf"},			
    -- 翻译
    {"potamides/pantran.nvim"},
    -- 图标
    {'kyazdani42/nvim-web-devicons'},
    -- 文件管理器
    {'kyazdani42/nvim-tree.lua', tag = 'nightly'},
    -- 标签栏
    {'akinsho/bufferline.nvim', tag = "v2.*"},
    -- 状态栏
    {'nvim-lualine/lualine.nvim'},
    -- 开始
    -- TODO use {'glepnir/dashboard-nvim'}
  }

  --|Colorscheme|--
  use {"EdenEast/nightfox.nvim", tag = "v1.0.0"}
  ---------------------------------|结束|--------------------------------------
  -----------------------------------------------------------------------------

  -- Packer 初始化引导
  if packer_bootstrap then
    require('packer').sync()
  end
end)


