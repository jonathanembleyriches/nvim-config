require('mason').setup()

require("mason-null-ls").setup({
    ensure_installed = {
        -- Opt to list sources here, when available in mason.
    },
    automatic_installation = false,
    handlers = {},
})
require("null-ls").setup({
    sources = {
        -- Anything not supported by mason.
        

	require("none-ls.formatting.ruff"),
	
          --require("null-ls").builtins.formatting.ruff,
          --require("null-ls").builtins.diagnostics.ruff,
          --require("null-ls").diagnostics.eslint
    },
 
})


require('mason-lspconfig').setup({
  ensure_installed = {
    'ruff_lsp',
    "ruff",
    "lua_ls",
    "pyright"

  }
})
  
  
  
local on_attach = function(client, bufnr)
  vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
   vim.api.nvim_set_keymap( "n", "<leader>lf", "<cmd>lua vim.lsp.buf.format()<cr>", {})
   
  vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua require("telescope.builtin").lsp_references()<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
  if client.name == 'ruff_lsp' then
    -- Disable hover in favor of Pyright
    client.server_capabilities.hoverProvider = false
  end
end



require('lspconfig').lua_ls.setup{ on_attach = on_attach }


--require('lspconfig').pyright.setup{on_attach = on_attach}
--require('lspconfig').ruff_lsp.setup{ on_attach = on_attach }




require('lspconfig').ruff_lsp.setup {
  on_attach = on_attach,
}

require('lspconfig').pyright.setup {
  settings = {
    pyright = {
      -- Using Ruff's import organizer
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { '*' },
      },
    },
  },
}

