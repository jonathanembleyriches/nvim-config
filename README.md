# GoatVim

This Neovim configuration is inspired by many and built upon the few.

## Install Neovim
Download the debian installer from :

https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.deb

And run the following command.

```sh
sudo apt install ./nvim-linux64.deb
```

## Install the config

Make sure to remove or move your current `nvim` directory

```sh
git clone https://github.com/LunarVim/nvim-basic-ide.git ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed 


## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

- On Ubuntu

  ```sh
  sudo apt install xsel # for X11
  sudo apt install wl-clipboard # for wayland
  ```

Next we need to install python support (node is optional)

- Neovim python support

  ```sh
  pip install pynvim
  ```

- Neovim node support

  ```sh
  npm i -g neovim
  ```

We will also need `ripgrep` for Telescope to work: 

- Ripgrep

  ```sh
  sudo apt install ripgrep
  ```
- LazyGit
```sh
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit
```

---

**NOTE** make sure you have [node](https://nodejs.org/en/) installed, I recommend a node manager like [fnm](https://github.com/Schniz/fnm).

---


## Fonts

I recommend using the following repo to get a "Nerd Font" (Font that supports icons)

[getnf](https://github.com/ronniedroid/getnf)

## Configuration

### LSP

To add a new LSP

First Enter:

```
:LspInstallInfo
```

and press `i` on the Language Server you wish to install

Now add the name of the language server to the "servers" list in the "lsp-installer.lua" file (line 6).

### Formatters and linters

Make sure the formatter or linter is installed and add it to the "null_ls.setup{}" function on line 12 in the "null-ls.lua" file.

**NOTE** Some are already setup as examples, remove them if you want

### Debugger

To install a custom debugger:
```
:DIInstall <name>
```
Then add the setup information for that debugger to the "dap.lua" file.
For example:
```
dap_install.config("python", {})
```
### Compilers

Compilers to be setup. Come back soon!

---
### ROS

ROS support to be setup. Come back soon!

---

### Plugins

You can install new plugins in the "plugins.lua" file.

---
## Keybindings

| Binding                     | Description              |
|-----------------------------|--------------------------|
| Space                       | Leader key               |
| ctrl + [h,j,k,l]            | Navigate window          |
| ctrl + [up,down,left,right] | Resize window            |
| Shift + [l,h]               | Navigate buffer          |
| Shift + q                   | Close buffer             |
| Leader + h                  | Clear highlights         |
| jk                          | Enter normal from insert |
| > or <                      | Indent in visual         |
| Leader + ff                 | Telescope find files     |
| Leader + ft                 | Telescope live grep      |
| Leader + fp                 | Telescope projects       |
| Leader + fb                 | Telescope buffers        |
| Leader + gg                 | Lazy git                 |
| Leader + /                  | Toggle comment in code   |
| Leader + \                  | Open floating terminal   |
| Leader + e                  | Tree view                |
| Leader + db                 | DAP Toggle breakpoint    |
| Leader + dc                 | DAP continue             |
| Leader + di                 | DAP step into            |
| Leader + do                 | DAP step over            |
| Leader + d0                 | DAP step out             |
| Leader + dr                 | DAP repl toggle          |
| Leader + dl                 | DAP run last             |
| Leader + du                 | DAP UI toggle            |
| Leader + dt                 | DAP terminate            |
|                             |                          |
---
## Plugins

- [packer](https://github.com/wbthomason/packer.nvim)
- [plenary](https://github.com/nvim-lua/plenary.nvim)
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [vim-bbye](https://github.com/moll/vim-bbye)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [project.nvim](https://github.com/ahmedkhalf/project.nvim)
- [impatient.nvim](https://github.com/lewis6991/impatient.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [alpha-nvim](https://github.com/goolord/alpha-nvim)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [darkplus.nvim](https://github.com/LunarVim/darkplus.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [cmp-path](https://github.com/hrsh7th/cmp-path)
- [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer)
- [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [DAPInstall.nvim](https://github.com/ravenxrz/DAPInstall.nvim)

---

> The computing scientist's main challenge is not to get confused by the complexities of his own making. 

\- Edsger W. Dijkstra
