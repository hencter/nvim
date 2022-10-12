-- Set up nvim-cmp.
-- :help cmp
-- 
local cmp = require'cmp'

cmp.setup({
  snippet = {
    -- 必选项：你必须指定一个 snippet 引擎，这里我使用的是 luasnip
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-k>"] = cmp.mapping.select_prev_item(), -- 向上选择
    ["<C-j>"] = cmp.mapping.select_next_item(), -- 向下选择
    ['<C-b>'] = cmp.mapping.scroll_docs(-2),
    ['<C-f>'] = cmp.mapping.scroll_docs(2),
    ['<C-Space>'] = cmp.mapping.complete(), --主动弹出补全
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, -- For luasnip users.
    { name = 'buffer' },
    { name = 'path' },
    { name = 'nvim_lua' },
    { name = 'emoji' },
    { name = 'npm', keyword_length = 4 },
    -- { name = 'calc' },
    -- { name = 'cmp_git' },
  },

})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
-- 命令模式补全
cmp.setup.cmdline(':', {
  sources = {
    { name = 'path' },
    { name = 'cmdline' },
		{ name = 'buffer' },
  }
})

-- Completions for / search based on current buffer:
-- 搜索补全
cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

-- 需要单独注册的 cmp 插件配置
require('cmp-npm').setup{}

