# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [5.0.0] - 2022-01-15

### Added

- A new feature is added that allows you to apply **Enfocado** only to plugins on-demand.
- Help documentation for vim has been created.
- Now [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) is not needed to apply **Human Writing**.

### Changed

Extensive refactoring of the following:

- The highlight function is renamed and optimized.
- Enfocado groups are removed and replaced with native vim groups.
- Many validations that prevent applying the theme are removed.
- Highlight links now make more sense.
- All the code was ordered.

### Fixed

- Fixed "many featured groups" error in [vim-airline](https://github.com/vim-airline/vim-airline).

## [4.3.3] - 2021-12-29

### Fixed

- Highlighting for the spell is optimized.

## [4.3.2] - 2021-12-27

### Added

Support is added for plugins used in CodeArt:

- [nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer/)
- [nvim-scrollview](https://github.com/dstein64/nvim-scrollview)
- [packer.nvim](https://github.com/wbthomason/packer.nvim)
- [vim-matchup](https://github.com/andymass/vim-matchup)
- [vim-which-key](https://github.com/liuchengxu/vim-which-key)
- [vista.vim](https://github.com/liuchengxu/vista.vim)

### Fixed

- Many improvements are made.

## [4.2.1] - 2021-12-18

### Added

- Full support for coc.nvim was added, including semantic highlighting.
- Enfocado is now more focused!

## [4.1.1] - 2021-12-12

### Added

Support is added for plugins used in CosmicNvim:

- [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [vim-floaterm](https://github.com/voldikss/vim-floaterm)

## [4.0.1] - 2021-12-03

### Fixed

- Color consistency for brackets is improved.

## [4.0.0] - 2021-11-23

### Added

- Bright colors are now used for certain syntax groups.

### Changed

- Multiple improvements and optimizations are made. It is recommended to update yes or yes. :)

## [3.13.1] - 2021-11-11

### Fixed

- Small details have been corrected.

## [3.13.0] - 2021-11-08

### Added

- Support for Github Copilot is added.

### Changed

- The correct diffs and foreground colors are chosen and improvements are made to the interface and terminal.

## [3.12.2] - 2021-10-28

### Added

- A new sexy Enfocado style was created for the most daring and outgoing coders, enjoy it!
- Introducing [Enfocado for VS Code](https://github.com/wuelnerdotexe/vscode-enfocado) **is here!**, enjoy it and recommend it with your team.

### Changed

- Supported statuslines themes have been improved.
- The performance of the theme has been greatly improved.
- Consistency improvements were made.

## [3.10.0] - 2021-10-25

### Added

- Support is added for [rainbow](https://github.com/luochen1990/rainbow) parentheses.

### Changed

- A standard was created for choosing colors for syntax highlighting, which will allow consistency with [Enfocado for VSCode](https://github.com/wuelnerdotexe/vscode-enfocado) (sorry for so many color changes in the syntax).

## [3.8.0] - 2021-10-18

### Added

Support is added for the following plugins:

- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [coc.nvim](https://github.com/neoclide/coc.nvim)
- [fzf.vim](https://github.com/junegunn/fzf.vim)
- [nerdtree](https://github.com/preservim/nerdtree)
- [vim-signify](https://github.com/mhinz/vim-signify)

### Changed

- A **function** is created to reduce the highlighting action of each group.
- The code is better organized.
- We have a new sexier banner!

## [2.0.0] - 2021-10-07

### Added

- The official **Enfocado** theme for [lualine.nvim](https://github.com/hoob3rt/lualine.nvim) is created.
- Added **human writing** simulation feature (available only with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) installed).
- Support for **256-colors** is added if you don't have **true colors**.

### Changed

- Multiple enhancements were made to the interface colors for consistency.
- Color groups were also defined to improve syntax. And the **yellow was removed** from there!

## [1.0.0] - 2021-09-25

- Initial release

<p align="center">¡Con 💖 de <strong>Latinoamérica</strong> para el mundo!</p>
