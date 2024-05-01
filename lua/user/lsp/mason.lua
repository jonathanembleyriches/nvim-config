local lspconfig = require('lspconfig')

require('mason').setup({})

require('mason-lspconfig').setup({
  ensure_installed = {
    'ruff_lsp',
    "ruff",
    "lua_ls",
    "pyright"

  }})

require('lspconfig').lua_ls.setup{}
require('lspconfig').pyright.setup{}
require('lspconfig').ruff_lsp.setup{}

