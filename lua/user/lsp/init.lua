

local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end



--require "user.lsp.lsp-installer"

--require("mason").setup()
--require("mason-lspconfig").setup()
--require'lspconfig'.ruff_lsp.setup{
--  init_options = {
--    settings = {
--      -- Any extra CLI arguments for `ruff` go here.
 --     args = {},
 --   }
 -- }
--}
--require("lspconfig").lua_ls.setup {}
require"user.lsp.mason"
--require "user.lsp.lsp-installer"
-- require("user.lsp.handlers").setup()
require "user.lsp.null-ls"

