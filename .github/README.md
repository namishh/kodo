<div align="center">
  <h1> kodo </h1>
</div>
<div align="center">

![GitHub top language](https://img.shields.io/github/languages/top/dark-Jedi2108/nvide?color=6d92bf&style=for-the-badge&labelColor=111418)
![Cool](https://img.shields.io/badge/Cool-Affirmative-da696f?style=for-the-badge&labelColor=111418)
![Bloat](https://img.shields.io/badge/Bloat-None-c585cf?style=for-the-badge&labelColor=111418)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/dark-Jedi2108/nvide?color=e1b56a&style=for-the-badge&labelColor=111418)
![GitHub Repo stars](https://img.shields.io/github/stars/dark-Jedi2108/nvide?color=74be88&style=for-the-badge&labelColor=111418)

</div>


![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/collage.png)


A bloated neovim configuration that looks good and is fast (startuptime < 0.035s).

<div align="center">

```txt
Tested on a pretty low end laptop
On Power                              : 0.018s - 0.024s
On Battery                            : 0.024s - 0.032s
```

</div>

Has something like 40+ plugins and but is still fast becuase of holy lazy loading. Should be even faster on good cpus.


## Plugins And Features

| Plugin        | Description          | Lazy |
| ------------- |-------------| :-----:|
| [folke/lazy](https://github.com/folke/lazy.nvim) | the package manager, better than packer.nvim for newbies | `false` |
| [chadcat7/prism](https://github.com/chadcat7/prism) | my own plugin written for making fast colorschemes | `true` |
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
| [nvimdev/lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim) | responsible for the winbar and lightbulb | `true` |
| [LnL7/vim-nix](https://github.com/LnL7/vim-nix) | nix syntax to make Nix a less of a headache | `true` |
| [kevinhwang91/nvim-ufo](https://github.com/kevinhwang91/nvim-ufo) | folds in neovim arent that bad! actually, better than vscode | `true` |
| [phaazon/hop.nvim](https://github.com/phaazon/hop.nvim) | move anywhere around the window in 2-3 clicks | `true` |
| [cbochs/grapple.nvim](https://github.com/cbochs/grapple.nvim) | bookmark important files to move to them instantly | `true` |
| [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) | very simple and easy to use snippet engine | `true` |
| [simrat39/symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim) | a tree like view for symbols via lsp | `true` |
| [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim) | a very minimal and good looking dashboard | `true` |
| [terrortylor/nvim-comment](https://github.com/terrortylor/nvim-comment) | quik and easy commenting | `true` |
| [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | beautiful highlights for TODO comments | `true` |
| [folke/trouble.nvim](https://github.com/folke/trouble.nvim) | pretty list for showing diagnostics, references, etc | `true` |
| [NeogitOrg/neogit](https://github.com/NeogitOrg/neogit) | magit clone for neovim | `true` |
| [j-hui/fidget.nvim](https://github.com/j-hui/fidget.nvim) | UI for nvim-lsp progress. Eye candy for the impatient | `true` |

#### And Also...
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

Add or remove them in this [file](https://github.com/chadcat7/kodo/blob/main/lua/core/colorschemes.lua)

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

## Showcase

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/01.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/02.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/03.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/04.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/05.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/06.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/07.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/08.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/09.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/10.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/11.png)

## Keybinds for my config

| Keys        | Function          |
| ------------- |-------------|
| <kbd>CTRL</kbd> <kbd>h</kbd> / <kbd>j</kbd> / <kbd>k</kbd> / <kbd>l</kbd>  | Moving Window Focus Towards Left/Up/Down/Right |
| <kbd>CTRL</kbd> <kbd>b</kbd> | Open And Close NvimTree |
| <kbd>CTRL</kbd> <kbd>f</kbd> | Format Files With Built In Lsp |
| <kbd>CTRL</kbd> <kbd>\\</kbd> | Open And Close ToggleTerm |
| <kbd>LDR</kbd> <kbd>t</kbd> <kbd>t</kbd> | Open And Close ToggleTerm |
| <kbd>z</kbd> <kbd>R</kbd> | Open All Folds |
| <kbd>z</kbd> <kbd>M</kbd> | Close All Folds |
| <kbd>z</kbd> <kbd>c</kbd> | Close Fold Under Cursor |
| <kbd>z</kbd> <kbd>o</kbd> | Open Fold Under Cursor |


### Basic File Operations

| Keys        | Function          |
| ------------- |-------------|
| <kbd>LDR</kbd> <kbd>q</kbd> <kbd>q</kbd>  | Exit Neovim |
| <kbd>LDR</kbd> <kbd>q</kbd> <kbd>w</kbd> | Save And Exit Neovim |
| <kbd>LDR</kbd> <kbd>q</kbd> <kbd>s</kbd> | Save File |
| <kbd>LDR</kbd> <kbd>q</kbd> <kbd>f</kbd> | Format File |
| <kbd>LDR</kbd> <kbd>q</kbd> <kbd>x</kbd> | Close Current Buffer |

### Telescope

| Keys        | Function          |
| ------------- |-------------|
| <kbd>LDR</kbd> <kbd>f</kbd> <kbd>f</kbd>  | Basic File Picker |
| <kbd>LDR</kbd> <kbd>f</kbd> <kbd>g</kbd> | Search All Recently Visited Files |
| <kbd>LDR</kbd> <kbd>f</kbd> <kbd>r</kbd> | Search File By String |
| <kbd>LDR</kbd> <kbd>f</kbd> <kbd>c</kbd> | Cooler Colorscheme Picker |

### Hop

| Keys        | Function          |
| ------------- |-------------|
| <kbd>LDR</kbd> <kbd>h</kbd> <kbd>a</kbd>  | Search For Anywhere in the File |
| <kbd>LDR</kbd> <kbd>h</kbd> <kbd>c</kbd> | Search By A Single Character |
| <kbd>LDR</kbd> <kbd>h</kbd> <kbd>C</kbd> | Search By Two Characters |
| <kbd>LDR</kbd> <kbd>h</kbd> <kbd>l</kbd> | Search By Starting Of Line |
| <kbd>LDR</kbd> <kbd>h</kbd> <kbd>v</kbd> | Search Vertically |
| <kbd>LDR</kbd> <kbd>h</kbd> <kbd>w</kbd> | Search By Word |

### Grapple

| Keys        | Function          |
| ------------- |-------------|
| <kbd>LDR</kbd> <kbd>G</kbd> <kbd>g</kbd>  | Show All The Bookmarks |
| <kbd>LDR</kbd> <kbd>G</kbd> <kbd>t</kbd> | Toggle A Boookmark |
| <kbd>LDR</kbd> <kbd>G</kbd> <kbd>a</kbd> | Add A Bookmark |
| <kbd>LDR</kbd> <kbd>G</kbd> <kbd>r</kbd> | Delete A Bookmark |

### Other

| Keys        | Function          |
| ------------- |-------------|
| <kbd>LDR</kbd> <kbd>l</kbd> <kbd>l</kbd>  | Open Lazy Dashboard |
| <kbd>LDR</kbd> <kbd>l</kbd> <kbd>n</kbd>  | Open Neogit Buffer |
| <kbd>LDR</kbd> <kbd>l</kbd> <kbd>t</kbd>  | Open Trouble List |
| <kbd>LDR</kbd> <kbd>l</kbd> <kbd>m</kbd> | Open Mason Dashboard |
| <kbd>LDR</kbd> <kbd>l</kbd> <kbd>c</kbd> | Show Available Code Actions |
| <kbd>LDR</kbd> <kbd>l</kbd> <kbd>s</kbd> | Open Symbols Outline |

## Todo
- [x]  ~~better screenshots~~
- [x]  ~~more, MORE fast (bring back to 15ms) || brought back to 18ms~~
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

