return {
  settings = {
    Lua = {
      diagnostics = {
				-- 由于这里的 Lua 内嵌于 Neovim 中,所以需要配置文件中设置全局变量
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
        },
      },
      telemetry = {
        enable = false,
      },
    },
  },
}
