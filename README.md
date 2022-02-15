# Enfocado for NeoVim

![Banner](https://raw.githubusercontent.com/wuelnerdotexe/enfocado/main/assets/banner.png)

[![License Badge](https://img.shields.io/badge/License-MIT-3FC5B7.svg?style=for-the-badge)](https://github.com/wuelnerdotexe/vim-enfocado/blob/main/LICENSE)
[![README Style Badge](https://img.shields.io/badge/README%20Style-Standard-3FC5B7.svg?style=for-the-badge)](https://github.com/RichardLitt/standard-readme)

**Enfocado** is more than a theme, it is a concept of **"how themes should be"**, focusing on what is really important to developers: **the code and nothing else**.

What you **won't have** if you **don't install Enfocado**:

- **CIELAB Colors:** use of the well-founded Selenized black color scheme created with the magic of the **CIELAB color space**. Learn about its features and design in its [official repository](https://github.com/jan-warchol/selenized/blob/master/features-and-design.md).
- **Human Writing:** human writing is simulated by using italic typeface for syntax groups (comments, methods, structs, and more ...) that are generally named and **written in human language**.
- **Minimal Syntax:** only three colors are used to highlight syntax, following the **color guidelines for web design**, which state that **only three main colors** should be used in interfaces, no more.
- **Signal Alerts:** the yellow, orange and red colors are reserved to be used only with important alerts, following the standards for the meanings of the **signal colors in the industrial area**.
- **Styles:** choose the style that best suits your **personality**:

<div align="center">
  <img src="https://raw.githubusercontent.com/wuelnerdotexe/enfocado/main/assets/vim-nature.png">
  <strong>Nature:</strong> go for the <code>nature</code> style if you are a minimalist developer who is always <strong>connected to nature</strong>.
</div>
<br />
<div align="center">
  <img src="https://raw.githubusercontent.com/wuelnerdotexe/enfocado/main/assets/vim-neon.png">
  <strong>Neon:</strong> go for the <code>neon</code> style if you are an outgoing developer that is always <strong>surrounded by RGBs</strong>.
</div>

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
  - [Statuslines](#statuslines)
  - [Colorscheme](#colorscheme)
  - [Customization](#customization)
- [Recommendations](#recommendations)
  - [Fonts](#fonts)
  - [Configs](#configs)
  - [Extras](#extras)
- [Contributing](#contributing)
- [Plugins](#plugins)
- [Credits](#credits)
- [License](#license)

## Installation

Install via your preferred package manager. Example using [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use { "artart222/nvim-enfocado' }
```

## Usage

### Statuslines

To use [Lightline](https://github.com/itchyny/lightline.vim) theme:

```lua
vim.g.lightline = { ["colorscheme"] = "enfocado" }
```

To use [Lualine](https://github.com/hoob3rt/lualine.nvim) theme:

```lua
require("lualine").setup { options = { theme = "enfocado" } }
```

To use [Airline](https://github.com/vim-airline/vim-airline) theme:

```lua
vim.g.airline_theme = "enfocado"
```

### Colorscheme

First, if you have **true color** support, enable it:

```lua
vim.opt.termguicolors = true
```

Then choose your favorite **Enfocado** style, for example:

```lua
vim.g.enfocado_style = "neon" -- Available: `nature` or `neon`.
```

If you want to reduce the loading time of **Enfocado**, you can specify the plugins you want to apply the theme to on demand (NEW FEATURE! ✨):

```lua
-- NOTE: To see a list of all available plugins, run
-- `:h enfocado-colorscheme` at the vim commandline.
vim.g.enfocado_plugins = {
  "coc",
  "copilot",
  "fzf",
  "gitgutter",
  "matchup",
  "nerdtree",
  "plug",
  "rainbow",
  "yank",
}
```

And finally turn on the **Enfocado** theme and enjoy!

```lua
-- IMPORTANT: this vim auto command ensures the
-- activation of Enfocado in compatible plugins.
vim.cmd("autocmd VimEnter * ++nested colorscheme enfocado")
```

### Customization

Like all colorschemes, **Enfocado** is easy to customize with `autocmd`. Make use of the `ColorScheme` event as in the following examples.

It would be a good idea to put all of your personal changes in an `augroup`, which you can do with the following code:

```lua
vim.cmd [[
  augroup enfocado_customization
    autocmd!
      " autocmds...
  augroup END
]]
```

To make the **background transparent**, you can use the following:

```lua
vim.cmd [[
  augroup enfocado_customization
    autocmd!
      autocmd ColorScheme enfocado highlight Normal ctermbg=NONE guibg=NONE
      autocmd ColorScheme enfocado highlight NormalNC ctermbg=NONE guibg=NONE
  augroup END
]]
```

Note: The usage codes must be written in your `init.lua`.

## Recommendations

### Fonts

In order for the human text simulation to work as it should, I recommend that you use either of these three beautiful fonts, which align with the **"Mankind and Machine"** concept.

- [IBM Plex Mono](https://www.ibm.com/plex/).
- [Victor Mono](https://rubjo.github.io/victor-mono/).

### Configs

This NeoVim configs comes with **Enfocado for NeoVim** already installed by default!

- [CodeArt](https://github.com/artart222/CodeArt)
- [CosmicNvim](https://github.com/CosmicNvim/CosmicNvim)

### Extras

- [Selenized black for terminals](https://github.com/jan-warchol/selenized/tree/master/terminals).
- [Enfocado for VS Code](https://github.com/wuelnerdotexe/vscode-enfocado).


## Contributing

All your ideas and suggestions are welcome! 🙌

## Plugins

The following plugins are supported:

- [coc.nvim](https://github.com/neoclide/coc.nvim)
- [copilot.vim](https://github.com/github/copilot.vim)
- [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [fzf.vim](https://github.com/junegunn/fzf.vim)
- [lightline.vim](https://github.com/itchyny/lightline.vim)
- [lualine.nvim](https://github.com/hoob3rt/lualine.nvim)
- [nerdtree](https://github.com/preservim/nerdtree)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer/)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-scrollview](https://github.com/dstein64/nvim-scrollview)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [packer.nvim](https://github.com/wbthomason/packer.nvim)
- [rainbow](https://github.com/luochen1990/rainbow)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [vim-airline](https://github.com/vim-airline/vim-airline)
- [vim-floaterm](https://github.com/voldikss/vim-floaterm)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [vim-highlightedyank](https://github.com/machakann/vim-highlightedyank)
- [vim-matchup](https://github.com/andymass/vim-matchup)
- [vim-plug](https://github.com/junegunn/vim-plug)
- [vim-signify](https://github.com/mhinz/vim-signify)
- [vim-which-key](https://github.com/liuchengxu/vim-which-key)
- [vista.vim](https://github.com/liuchengxu/vista.vim)

## Credits

- Theme colorscheme by [Jan Warchol](https://github.com/jan-warchol) on [Github](https://github.com/jan-warchol/selenized/blob/master/the-values.md).
- Enfocado Nature wallpaper by [Josefin](https://unsplash.com/@josefin?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/nature?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText).
- Enfocado Neon wallpaper by [Dilyara Garifullina](https://unsplash.com/@dilja96?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/neon?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText).
- Original enfocado by [wuelnerdotexe](https://github.com/wuelnerdotexe)

## License

[MIT &copy; Wuelner Martínez.](https://github.com/wuelnerdotexe/vim-enfocado/blob/main/LICENSE)