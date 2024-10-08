-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local lspconfig = require("lspconfig")
lspconfig.gopls.setup({
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
})

vim.cmd([[ autocmd FileType go setlocal noexpandtab tabstop=4 shiftwidth=4 ]])

vim.api.nvim_command("autocmd BufWritePre *.go :GoFmt")
