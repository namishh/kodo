<div align="center">
  <h1> kodo </h1>
</div>
<div align="center">

![GitHub top language](https://img.shields.io/github/languages/top/dark-Jedi2108/nvide?color=6d92bf&style=for-the-badge)
![Cool](https://img.shields.io/badge/Cool-Affirmative-da696f?style=for-the-badge)
![Bloat](https://img.shields.io/badge/Bloat-None-c585cf?style=for-the-badge)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/dark-Jedi2108/nvide?color=e1b56a&style=for-the-badge)
![GitHub Repo stars](https://img.shields.io/github/stars/dark-Jedi2108/nvide?color=74be88&style=for-the-badge)

</div>


![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/1.png)


A neovim configuration that looks good and is fast (startuptime < 0.05s).

<div align="center">

```txt
Tested on a pretty low end laptop
On Power                              : 0.022s - 0.028s
On Battery                            : 0.028s - 0.036s
```

</div>

Has something like 34 plugins and but is still fast becuase of holy lazy loading.


## Plugins And Features

| Plugin        | Description          | Lazy |
| ------------- |-------------| :-----:|
| [folke/lazy](https://github.com/folke/lazy.nvim) | the package manager, better than packer.nvim for newbies | `false` |
| [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | syntax highlighting, most popular one for neovim | `true` |
| [NvChad/nvim-colorizer.lua](https://github.com/NvChad/nvim-colorizer.lua) | highlights colors and is really frickin fast | `true` |
| [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) | a very neat, simple and clean file tree | `true` |
| [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | lua fork of vim devicons | `true`
| [folke/which-key.nvim](https://github.com/folke/which-key.nvim) | shows all the posiible vim keybindings, perfect for dummies | `true` |
| [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | probably the most popular menu. can be used for a lot of stuff | `true` |
| [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | terminal integration in neovim | `true` |
| [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Super fast git decorations implemented purely in Lua. | `true` |
| [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | super cool for keeping track of code | `true` |
| [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim) | installing LSPs made super easy | `true` |
| [utilyre/barbecue.nvim](https://github.com/utilyre/barbecue.nvim) | vscode like winbar code context. looks super cool | `true` |
| [kosayoda/nvim-lightbulb](https://github.com/kosayoda/nvim-lightbulb) | shows a lightbulb where ever code fixes are available | `true` |
| [LnL7/vim-nix](https://github.com/LnL7/vim-nix) | nix syntax to make Nix a less of a headache | `true` |
| [kevinhwang91/nvim-ufo](https://github.com/kevinhwang91/nvim-ufo) | folds in neovim arent that bad! actually, better than vscode | `true` |
| [ggandor/leap.nvim](https://github.com/ggandor/leap.nvim) | move anywhere around the window in 2-3 clicks | `true` |
| [cbochs/grapple.nvim](https://github.com/cbochs/grapple.nvim) | bookmark important files to move to them instantly | `true` |
| [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) | very simple and easy to use snippet engine | `true` |
| [simrat39/symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim) | a tree like view for symbols via lsp | `true` |
| [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim) | a very minimal and good looking dashboard | `true` |

#### And Also...
+ Comes with 9 premade colourschemes!
+ Cached Colorschemes for better speeds!
+ Lazy loading done most of the time to get blazingly moderate startup times.
+ A Minimal Custom [Bufferline](https://github.com/chadcat5207/nvide/tree/main/lua/ui/buf)
+ Cool Looking Custom [Statusline](https://github.com/chadcat5207/nvide/tree/main/lua/ui/stl)
+ Auto Formatting with inbuilt LSP (no plugin! , requires installing the lsp client)

## Requirements
+ Neovim >= v0.9
+ ripgrep
+ nodejs and npm
+ a brain (mandatory)
+ xrdb for xresources
+ some xp with lua and neovim

## Installation
Warning: You may / may not get a bunch of errors during the first time you run this config<br>
It's really easy , just a simple one liner with git!

```bash
~ $ git clone --depth 1 https://github.com/chadcat5207/nvide ~/.config/nvim
```

## Adding mason to path
Warning: This step is important for installing LSP
Add this to your shell config
```zsh
# this is for zsh
export PATH=$PATH:~/.local/share/nvim/mason/bin
```
```zsh
~ $ source ~/.zshrc
```

## Custom Colorschemes
I know it sucks but you will have to do it manually
+ Make a new color scheme  `/lua/themes/schemes/scheme.lua` (copy the default colorscheme and change the colors) 
+ Make a colors file for it `/colors/scheme.lua`

```lua
-- /colors/scheme.lua
require("themes").setup({
  theme = "scheme",
  transparent_background = false
})
```

+ Set the color scheme in `lua/core/cfg.lua`

```lua
M.colorscheme = 'pop'
```
## Statusline Styles 
**Warning:** This section contains the worst ever code written
There are two prebuilt styles
+ To change the style edit `/lua/core/cfg.lua`

```lua
M.statusstyle = 'minimal' -- minimal | fancy
```
+ Reload Neovim

## Some Points To be Noted
+ This is meant to be a simple base config which can be extended and customised very easily.
+ THIS IS NOT A "DISTRO", just my personal dotfiles that i wanted to share with you guys!
+ This is not for beginners, you need to have some experience wihth lua and neovim.

## Screenshots

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/2.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/3.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/4.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/5.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/6.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/7.png)

## Todo
- [x]  ~~better screenshots~~
- [ ]  more, MORE fast (bring back to 15ms)
- [x]  ~~colorscheme caching~~
- [x]  ~~custom statusline (i am proud)~~
- [x]  ~~learn markdown bcoz i suck at it~~
- [x]  ~~fix autoformatting on save~~
- [x] ~~make custom tabline~~
- [x] ~~fix custom dashboard~~
- [x] ~~add some more themes (currently 9)~~
- [x] ~~fix custom tabline~~

## Special Thanks 
This config wouldn't have been possible without these chads!
+ [dharmx](https://github.com/dharmx/nvim/)
+ [siduck](https://github.com/NvChad/NvChad)

