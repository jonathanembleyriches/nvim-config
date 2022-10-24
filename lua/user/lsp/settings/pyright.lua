python_path = require "user.python"

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
}
