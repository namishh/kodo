
# nvide
A neovim configuration that looks good and if fast (~0.045s - 0.060ms).
Has something like 26 plugins and but is still fast becuase of holy lazy loading.

## Plugins And Features
+ A Minimal and Styline bufferline with [bufferline.nvim]('https://github.com/akinsho/bufferline.nvim')
+ Cool Looking Statusline with [staline.nvim]('https://github.com/tamton-aquib/staline.nvim/tree/main/lua')
+ Parsing with [treesitter]('https://github.com/nvim-treesitter/nvim-treesitter')
+ A File Tree with [nvim-tree]('https://github.com/kyazdani42/nvim-tree.lua')
+ Fast file finding and more with [telescope]('https://github.com/nvim-telescope/telescope.nvim/')
+ dope dashboard with [alpha-nvim]('https://github.com/goolord/alpha-nvim/')
+ snippets with [LuaSnip]('https://github.com/L3MON4D3/LuaSnip')
+ terminalsssssss with [toggleterm]('https://github.com/akinsho/toggleterm.nvim')

## Changing Colorschemes
I know it sucks but you will have to do it manually
+ Make a new color scheme  `/lua/themes/colorschemes/scheme.lua` (copy the default colorscheme and change the colors) 
+ change colorscheme name at `/lua/themes/init.lua` 
    `local core = require('themes.colorschemes.scheme')`
+ Reload Neovim




## Screenshots

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/screenshots/n1.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/screenshots/n3.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/screenshots/n4.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/screenshots/n2.png)




