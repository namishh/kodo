-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
      'akinsho/bufferline.nvim',
      requires = 'kyazdani42/nvim-web-devicons',
      event = "BufWinEnter",
      config = "require('config/bufferline')"
    }
  use {'lewis6991/impatient.nvim'}
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate", event = "BufWinEnter", config="require('config/treesitter')"}
  use {'tamton-aquib/staline.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }, event="BufWinEnter", config="require('config/staline')"}
  use {'windwp/nvim-ts-autotag',event = "InsertEnter", after = "nvim-treesitter"}
  use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    cmd = "NvimTreeToggle",
    config = "require('config/nvim-tree')"
  }
  use { 'windwp/nvim-autopairs', config = "require('config/autopair')", after = "nvim-cmp" }
  use {'norcalli/nvim-colorizer.lua', event = "BufRead", config='require("config/colorizer")'}
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
        event = "BufRead",
        config = "require('config/dashboard')",
      }
  use {'neovim/nvim-lspconfig', config="require('config/autocomplete')"}
  use {
      "L3MON4D3/LuaSnip",
      event = "InsertEnter",
   }

   use {
      "hrsh7th/nvim-cmp",
   }

   use {
      "saadparwaiz1/cmp_luasnip",
   }

   use {
      "hrsh7th/cmp-nvim-lua",
   }

   use {
      "hrsh7th/cmp-nvim-lsp",
   }

   use {
      "hrsh7th/cmp-buffer",
   }
  use { 'hrsh7th/cmp-path' }
  use {"elkowar/yuck.vim", event = "BufWinEnter"}
  use "dstein64/vim-startuptime"
  use {"kyazdani42/nvim-web-devicons"}
  use { 'williamboman/nvim-lsp-installer' }
  use { "akinsho/toggleterm.nvim", config = "require('config/terminal')" }
  use {"nathom/filetype.nvim", config="require('filetype').setup{}"}
end)

