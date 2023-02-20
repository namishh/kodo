vim.cmd [[packadd packer.nvim]]
local packer = require("packer")
packer.config.compile_path = vim.fn.stdpath("config") .. "/lua/packer_compiled.lua"
return packer.startup({ function(use)
  use {
    'wbthomason/packer.nvim',
    cmd = 'require("plugins.commands").packer'
  }
  use {
    'norcalli/nvim-colorizer.lua',
    config = "require('plugins.ui.colorizer')",
    event = 'CursorHold',
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate",
    module = "nvim-treesitter",
    event = "BufRead",
    cmd = 'require("plugins.commands").treesitter',
    config = "require('plugins.treesitter.treesitter')"
  }
  use {
    'windwp/nvim-ts-autotag',
    event = "InsertEnter",
    after = "nvim-treesitter"
  }
  use {
    'kyazdani42/nvim-tree.lua',
    cmd = "NvimTreeToggle",
    config = "require('plugins.utils.nvim-tree')"
  }
  use { "kyazdani42/nvim-web-devicons", event = 'CursorHold', config = "require('plugins.ui.devicons')",
    module = "nvim-web-devicons", }
  use {
    'windwp/nvim-autopairs',
    config = "require('plugins.treesitter.autopair')",
    after = "nvim-cmp"
  }
  use {
    "folke/which-key.nvim",
    module = "which-key",
    event = 'CursorHold',
    wants = "toggleterm.nvim",
    keys = { "<leader>", '"', "'", "`" },
    config = "require('plugins.utils.which-key')"
  }
  use {
    'nvim-lua/plenary.nvim',
    event = 'CursorHold',
  }
  use {
    'nvim-telescope/telescope.nvim',
    cmd = "Telescope",
    config = "require('plugins.utils.telescope')"
  }
  use {
    'neovim/nvim-lspconfig',
    config = "require('plugins.lsp.lspconfig')",
    event = "CursorHold",
    --cmd = "LspStart",
    opt = true,
  }
  use {
    'rafamadriz/friendly-snippets',
    module = { "cmp", "cmp_nvim_lsp" },
    event = "InsertEnter"
  }
  use { 'hrsh7th/nvim-cmp',
    after = "friendly-snippets",
    config = function() require('plugins.lsp.cmp') end
  }
  use {
    'L3MON4D3/LuaSnip',
    after = "nvim-cmp",
    config = "require('plugins.lsp.luasnip')"
  }
  use {
    'saadparwaiz1/cmp_luasnip',
    after = "LuaSnip"
  }
  use {
    'hrsh7th/cmp-nvim-lua',
    after = "cmp_luasnip"
  }
  use {
    'hrsh7th/cmp-nvim-lsp',
    after = 'cmp-nvim-lua',
  }
  use {
    'hrsh7th/cmp-buffer',
    after = "cmp-nvim-lsp"
  }
  use {
    'hrsh7th/cmp-path',
    after = "cmp-buffer"
  }
  use { "dstein64/vim-startuptime", cmd = "StartupTime" }
  use { "williamboman/mason.nvim",
    cmd = {
      "MasonInstall",
      "MasonUninstall",
      "Mason",
      "MasonUninstallAll",
      "MasonLog",
    },
    config = "require('plugins.lsp.mason')",
  }
  use {
    "akinsho/toggleterm.nvim",
    config = "require('plugins.utils.toggleterm')",
    event = 'CursorHold',
  }
  use { "lewis6991/gitsigns.nvim",
    event = 'CursorHold',
    ft = "gitcommit",
    config = function()
      require('gitsigns').setup {
        signs = {
          add          = { hl = 'GitSignsAdd', text = '│', numhl = 'GitSignsAddNr', linehl = 'GitSignsAddLn' },
          change       = { hl = 'GitSignsChange', text = '│', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
          delete       = { hl = 'GitSignsDelete', text = '_', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
          topdelete    = { hl = 'GitSignsDelete', text = '‾', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
          changedelete = { hl = 'GitSignsChange', text = '~', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
          untracked    = { hl = 'GitSignsAdd', text = '│', numhl = 'GitSignsAddNr', linehl = 'GitSignsDeleteLn' },
        },
      }
    end }
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = "require('plugins.ui.indentlines')",
    event = "CursorHold"
  }
  use {
    "terrortylor/nvim-comment",
    config = "require('plugins.utils.comments')",
    event = "CursorHold"
  }
  use({
    "dharmx/telescope-media.nvim",
    config = function()
      require("telescope").load_extension("media")
    end,
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    after = "telescope.nvim",
  })
  -- End Of Plugins
end,
})
