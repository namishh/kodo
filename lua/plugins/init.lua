vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  use {
      'akinsho/bufferline.nvim',
      requires = 'kyazdani42/nvim-web-devicons',
      event = "UIEnter",
      config = "require('config/bufferline')"
  }
  use { 'wbthomason/packer.nvim', cmd='require("plugins.commands").packer'}
  use {'norcalli/nvim-colorizer.lua', config="require('config.colorizer')", opt=true, event="BufRead"}
  use {'lewis6991/impatient.nvim'}
  use {'nvim-treesitter/nvim-treesitter', cmd = 'require("plugins.commands").treesitter', run = ":TSUpdate", event = "BufWinEnter", config="require('config/treesitter')"}
  use {'windwp/nvim-ts-autotag',event = "InsertEnter", after = "nvim-treesitter"}
  use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    cmd = "NvimTreeToggle",
    config = "require('config/nvim-tree')"
  }
  use "kyazdani42/nvim-web-devicons"
  use { 'windwp/nvim-autopairs', config = "require('config/autopair')", after = "nvim-cmp" }
  use {"folke/which-key.nvim", event = "BufWinEnter", config = "require('config/whichkey')"}
  use 'nvim-lua/plenary.nvim'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'}},
  cmd = "Telescope",
  config = "require('config/telescope')"
  }
  use{
        "goolord/alpha-nvim",
        requires = {"kyazdani42/nvim-web-devicons"},
        config = "require('config/dashboard')",
        cmd = {
          "Alpha"
        },
        event="BufWinEnter",
      }
  use {'neovim/nvim-lspconfig'}
  use {'rafamadriz/friendly-snippets', event="InsertEnter"}
  use {'hrsh7th/nvim-cmp', after="friendly-snippets", config="require('config/autocomplete')"}
  use {'L3MON4D3/LuaSnip', after="nvim-cmp", config="require('config/luasnip')"}
  use {'saadparwaiz1/cmp_luasnip', after="LuaSnip"}
  use {'hrsh7th/cmp-nvim-lua', after="cmp_luasnip"}
  use {'hrsh7th/cmp-nvim-lsp', after="cmp-nvim-lua"}
  use {'hrsh7th/cmp-buffer', after="cmp-nvim-lsp"}
  use {'hrsh7th/cmp-path', after="cmp-buffer"}
  use {"dstein64/vim-startuptime", cmd="StartupTime"}
  use { 'williamboman/nvim-lsp-installer',   
    cmd = {
    "LspInstallInfo",
    "LspInstallLog",
    "LspStart",
  }, module = "nvim-lsp-installer"}
  use { "akinsho/toggleterm.nvim", config = "require('config/terminal')", event="BufWinEnter"}
  use {"lewis6991/gitsigns.nvim", event="BufWinEnter",
    config = function()
    require('gitsigns').setup()
  end }
end)

