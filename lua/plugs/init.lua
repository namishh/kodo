vim.cmd [[packadd packer.nvim]]
local packer = require("packer")
packer.config.compile_path = vim.fn.stdpath("config") .. "/lua/plugs/compiled.lua"

return packer.startup({ function(use)
  use {
    'wbthomason/packer.nvim',
    cmd = 'require("plugs.cmds").packer'
  }
  use {
    'norcalli/nvim-colorizer.lua',
    config = "require('plugs.ui.colorizer')",
    event = 'CursorHold',
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate",
    module = "nvim-treesitter",
    event = "BufRead",
    cmd = 'require("plugs.cmds").treesitter',
    config = "require('plugs.ts.treesitter')"
  }
  use {
    'windwp/nvim-ts-autotag',
    event = "InsertEnter",
    after = "nvim-treesitter"
  }
  use {
    'kyazdani42/nvim-tree.lua',
    cmd = "NvimTreeToggle",
    config = "require('plugs.util.nvim-tree')"
  }
  use { "kyazdani42/nvim-web-devicons", event = 'CursorHold', config = "require('plugs.ui.devicons')",
    module = "nvim-web-devicons", }
  use {
    'windwp/nvim-autopairs',
    config = "require('plugs.ts.autopair')",
    after = "nvim-cmp"
  }
  use {
    "folke/which-key.nvim",
    module = "which-key",
    event = 'CursorHold',
    wants = "toggleterm.nvim",
    keys = { "<leader>", '"', "'", "`" },
    config = "require('plugs.util.which-key')"
  }
  use {
    'nvim-lua/plenary.nvim',
    event = 'CursorHold',
  }
  use {
    'nvim-telescope/telescope.nvim',
    event = 'CursorHold',
    wants = 'plenary.nvim',
    config = "require('plugs.util.telescope')"
  }
  use {
    'neovim/nvim-lspconfig',
    config = "require('plugs.lsp.lspconfig')",
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
    config = function() require('plugs.lsp.cmp') end
  }
  use {
    'L3MON4D3/LuaSnip',
    after = "nvim-cmp",
    config = "require('plugs.lsp.luasnip')"
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
  use { "williamboman/mason.nvim",
    cmd = {
      "MasonInstall",
      "MasonUninstall",
      "Mason",
      "MasonUninstallAll",
      "MasonLog",
    },
    config = "require('plugs.lsp.mason')",
  }
  use {
    "akinsho/toggleterm.nvim",
    config = "require('plugs.util.toggleterm')",
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
    config = "require('plugs.ui.indentlines')",
    event = "CursorHold"
  }
  use {
    "terrortylor/nvim-comment",
    config = "require('plugs.util.comments')",
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
  -- End Of plugs
end,
})
