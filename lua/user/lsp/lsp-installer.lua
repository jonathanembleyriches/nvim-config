--local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
--if not status_ok then
--  return
--end

local servers = {
  "sumneko_lua",
 -- "cssls",
  "clangd",
  "html",
  "tsserver",
  "pyright",
  "bashls",
  "jsonls",
  "yamlls",
  "omnisharp",
  "ruff_lsp",
  --"csharp_ls",

  -- "pylsp",
}

--lsp_installer.setup()

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local opts = {}

for _, server in pairs(servers) do
  opts = {
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,
  }

  if server == "sumneko_lua" then
    local sumneko_opts = require "user.lsp.settings.sumneko_lua"
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  if server == "pyright" then
    local pyright_opts = require "user.lsp.settings.pyright"
    opts = vim.tbl_deep_extend("force", pyright_opts, opts)
  end

  if server == "omnisharp" then
    
    local omni_opts = require "user.lsp.settings.omnisharp"
    opts = vim.tbl_deep_extend("force", omni_opts, opts)
    -- local pid = vim.fn.getpid()
    --local omnisharp_bin = "/home/jon/omnirun"
    --lspconfig[server].setup{
    --cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
    --}
  end
  if server == "ruff_lsp" then
    local ruff_opts = require "user.lsp.settings.ruff"
    opts = vim.tbl_deep_extend("force", ruff_opts, opts)
  end

  lspconfig[server].setup(opts)

end
