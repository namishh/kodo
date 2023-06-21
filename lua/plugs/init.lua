require("plugs.strap")
local lazy = require("lazy")

lazy.setup({
  {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate",
    lazy = true,
    event = "VeryLazy",
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    config = function() require('plugs.ts.treesitter') end
  },
  {
    'windwp/nvim-ts-autotag',
    event = "VeryLazy",
    lazy = true
  },
  {
    'NvChad/nvim-colorizer.lua',
    event = "VeryLazy",
    config = function() require('plugs.ui.colorizer') end,
    lazy = true
  },
  {
    'kyazdani42/nvim-tree.lua',
    event = "VeryLazy",
    cmd = "NvimTreeToggle",
    lazy = true,
    config = function() require('plugs.util.nvim-tree') end
  },
  {
    "kyazdani42/nvim-web-devicons",
    event = "VeryLazy",
    config = function() require('plugs.ui.devicons') end,
    lazy = true,
  },
  {
    "folke/which-key.nvim",
    lazy = true,
    event = "VeryLazy",
    keys = { "<leader>", '"', "'", "`" },
    config = function() require('plugs.util.which-key') end
  },
  {
    'nvim-lua/plenary.nvim',
    event = "VeryLazy",
    lazy = true,
  },
  {
    'nvim-telescope/telescope.nvim',
    event = "VeryLazy",
    dependencies = { 'plenary.nvim' },
    lazy = true,

    config = function() require('plugs.util.telescope') end
  },
  {
    "akinsho/toggleterm.nvim",
    config = function() require('plugs.util.toggleterm') end,
    event = "VeryLazy",
    lazy = true,
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    lazy = true,
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
    end
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function() require('plugs.ui.indentlines') end,
    lazy = true,
    event = "VeryLazy",
  },
  {
    "dharmx/telescope-media.nvim",
    config = function()
      require("telescope").load_extension("media")
    end,
    event = "VeryLazy",
    lazy = true,
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
  { "williamboman/mason.nvim",
    cmd = {
      "MasonInstall",
      "MasonUninstall",
      "Mason",
      "MasonUninstallAll",
      "MasonLog",
    },
    event = "VeryLazy",
    lazy = true,
    config = function() require('plugs.lsp.mason') end,
  },
  {
    "terrortylor/nvim-comment",
    config = function() require('plugs.util.comments') end,
    event = "VeryLazy",
    lazy = true,
  },
  -- The funs begins
  {
    "neovim/nvim-lspconfig",
    lazy = true,
    event = "VeryLazy",
    config = function()
      require "plugs.lsp.lspconfig"
    end,
  },

  {
    "utilyre/barbecue.nvim",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      "SmiteshP/nvim-navic",
    "kyazdani42/nvim-web-devicons",
    },
    opts = {
      attach_navic = false,
      theme = "auto",
      include_buftypes = { "" },
      exclude_filetypes = { "gitcommit", "Trouble", "toggleterm" },
      show_modified = false,
    },
  },
  -- load luasnips + cmp related in insert mode only
  {
    "hrsh7th/nvim-cmp",
    event = "VeryLazy",
    lazy = true,
    dependencies = {
      {
        -- snippet plugin
        "L3MON4D3/LuaSnip",
        lazy = true,
        dependencies = "rafamadriz/friendly-snippets",
        config = function()
          require("plugs.lsp.luasnip")
        end,
      },

      -- autopairing of (){}[] etc
      {
        "windwp/nvim-autopairs",
        opts = {
          fast_wrap = {},
          disable_filetype = { "TelescopePrompt", "vim" },
        },
        lazy = true,
        config = function(_, opts)
          require("nvim-autopairs").setup(opts)

          -- setup cmp for autopairs
          local cmp_autopairs = require "nvim-autopairs.completion.cmp"
          require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
      },

      -- cmp sources plugins
      {
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
      },
    },
    config = function()
      require("plugs.lsp.cmp")
    end,
  },
  {
    "LnL7/vim-nix",
    lazy = true,
    ft = 'nix',
  },
  {
    "elkowar/yuck.vim",
    lazy = true,
    ft = 'yuck',
  },
})
