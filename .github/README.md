# nvide
![GitHub top language](https://img.shields.io/github/languages/top/dark-Jedi2108/nvide?color=6d92bf&style=for-the-badge)
![Lines of code](https://img.shields.io/tokei/lines/github/dark-Jedi2108/nvide?color=e1b56a&style=for-the-badge)
![GitHub Repo stars](https://img.shields.io/github/stars/dark-Jedi2108/nvide?color=74be88&style=for-the-badge) \
A neovim configuration that looks good and is fast (~0.045s - 0.070ms).
Has something like 26 plugins and but is still fast becuase of holy lazy loading.


## Plugins And Features
+ Lazy loading done most of the time to get blazingly moderate startup times.
+ A Minimal and Styline bufferline with [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
+ Cool Looking Custom [Statusline](https://github.com/dark-Jedi2108/nvide/tree/main/lua/staline)
+ Parsing with [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
+ A File Tree with [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua)
+ Fast file finding and more with [telescope](https://github.com/nvim-telescope/telescope.nvim/)
+ Dope dashboard with [alpha-nvim](https://github.com/goolord/alpha-nvim/)
+ Snippets with [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
+ Terminalsssssss with [toggleterm](https://github.com/akinsho/toggleterm.nvim)
+ Color Hightlighting with [nvim-colorizer](https://github.com/norcalli/nvim-colorizer.lua)
+ Popup mappings keysheet [whichkey.nvim](https://github.com/folke/which-key.nvim)
+ Lsp Management with [lsp-installer](https://github.com/williamboman/nvim-lsp-installer/)

## Requirements
+ Neovim
+ ripgrep (optional)
+ nodejs and npm
+ a brain (mandatory)
## Installation

It's really easy , just a simple one liner with git!
```bash
git clone --depth 1 https://github.com/dark-Jedi2108/nvide ~/.config/nvim
```
## Changing Colorschemes
I know it sucks but you will have to do it manually
+ Make a new color scheme  `/lua/themes/colorschemes/scheme.lua` (copy the default colorscheme and change the colors) 
+ change colorscheme name at `/lua/themes/init.lua` 
    `local core = require('themes.colorschemes.scheme')`
+ Reload Neovim
## Why this config when there are so many already?
+ This is meant to be a simple base config which can be extended and customised very easily. Premade configs like NvChad or AstroNvim are really cool but for someone who is a total beginner to lua, it seems very hard to configure with a lot of imports.
+ THIS IS NOT A "DISTRO", just my personal dotfiles that i wanted to share with you guys!
## Screenshots

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/n1.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/n3.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/n4.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/n2.png)


## Todo
- [ ]  better screenshots
- [ ]  more, MORE fast
- [x]  custom statusline
- [ ]  custom bufferline (optional)
## Special Thanks 
(this config wouldn't have been possible without you rockstars!) \
[dharmx](https://github.com/dharmx/KrakeNvim/) \
[siduck](https://github.com/NvChad/NvChad)

