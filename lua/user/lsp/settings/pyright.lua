python_path = require "user.python"
local function organize_imports()
  local params = {
    command = 'pyright.organizeimports',
    arguments = { vim.uri_from_bufnr(0) },
  }
 end

return {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "on",

      },
      -- venvPath = "/home/jon/anaconda3/envs/",
      -- venv = "env_1",
      pythonPath = python_path["path"], --"/home/jon/anaconda3/envs/py38/bin/python3.8"],
      
    },
  },
   PyrightOrganizeImports = {
      organize_imports,
      description = 'Organize Imports',
    },
}
