require("plugs.strap")
local lazy = require("lazy")
lazy.setup({
  {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate",
    lazy = true,
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    config = function() require('plugs.ts.treesitter') end
  },
  {
    'windwp/nvim-ts-autotag',
    event = "InsertEnter",
    lazy = true
  },
  {
    'NvChad/nvim-colorizer.lua',
    event = 'BufRead',
    config = function() require('plugs.ui.colorizer') end,
    lazy = true
  },
  {
    "nvim-tree/nvim-web-devicons",
    event = 'BufRead',
    config = function() require('plugs.ui.devicons') end,
    lazy = true,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    event = "BufReadPost",
    config = function()
      require("ibl").setup()
    end
  },
  {
    'kyazdani42/nvim-tree.lua',
    lazy = true,
    cmd = "NvimTreeToggle",
    config = function() require('plugs.util.nvim-tree') end
  },
  {
    'nvim-lua/plenary.nvim',
    lazy = true,
  },
  {
    'nvim-telescope/telescope.nvim',
    cmd = "Telescope",
    lazy = true,
    dependencies = { 'plenary.nvim' },
    config = function() require('plugs.util.telescope') end
  },
  {
    "terrortylor/nvim-comment",
    config = function()
      require('nvim_comment').setup({ create_mappings = false })
    end
  },
  {
    "akinsho/toggleterm.nvim",
    lazy = true,
    config = function() require('plugs.util.toggleterm') end,
    cmd = "ToggleTerm",
  },
  {
    "lewis6991/gitsigns.nvim",
    lazy = true,
    event = { "BufRead" },
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
    "williamboman/mason.nvim",
    cmd = {
      "MasonInstall",
      "MasonUninstall",
      "Mason",
      "MasonUninstallAll",
      "MasonLog",
    },
    lazy = true,
    config = function() require('plugs.lsp.mason') end,
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPost", "BufNewFile" },
    lazy = true,
    cmd = { "LspInfo", "LspInstall", "LspUninstall", "LspStart" },
    config = function()
      require "plugs.lsp.lspconfig"
    end,
  },

  -- load luasnips + cmp related in insert mode only
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
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
        event = "InsertEnter",
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
    "nvim-telescope/telescope-ui-select.nvim",
    lazy = true
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = { "BufReadPost", "InsertEnter" },
    opts = {
      signs = false,
    }
  },
  {
    "goolord/alpha-nvim",
    cmd = {
      "Alpha",
      "AlphaRedraw"
    },
    config = function()
      require("plugs.ui.alpha")
    end
  },
  {
    "chadcat7/prism",
    lazy = true,
    event = "UIEnter",
    config = function()
      require("plugs.ui.prism")
    end
  },
  {
    "dharmx/track.nvim",
    config = function()
      require("track").setup({})
    end,
    cmd = {
      "Mark",
      "Track",
      "MarkOpened",
      "StashBundle",
      "RestoreBundle",
      "AlternateBundle",
      "Unmark"
    },
  },
  -- Plugins for specific file types
  {
    "wuelnerdotexe/vim-astro",
    ft = "astro"
  },
  {
    'prisma/vim-prisma',
    ft = "prisma"
  },
  {
    "elkowar/yuck.vim",
    ft = "yuck"
  },
  {
    "LnL7/vim-nix",
    lazy = true,
    ft = 'nix',
  },
}, {
  ui = {
    size = { width = 0.8, height = 0.8 },
    border = "solid",
    icons = {
      cmd = " ",
      config = "",
      event = "",
      ft = " ",
      init = " ",
      import = " ",
      keys = " ",
      lazy = "鈴 ",
      loaded = "●",
      not_loaded = "○",
      plugin = " ",
      runtime = " ",
      source = " ",
      start = "",
      task = "✔ ",
      list = { "●", "➜", "★", "‒" },
    },
    throttle = 20,
  },
  defaults = { lazy = true },
  performance = {
    cache = {
      enabled = true,
      path = vim.fn.stdpath("cache") .. "/lazy/cache",
      ttl = 3600 * 24 * 5,
      disable_events = { "VimEnter", "BufReadPre", "UIEnter" },
    },
    reset_packpath = true,
    rtp = {
      disabled_plugins = {
        "2html_plugin",
        "getscript",
        "getscriptPlugin",
        "gzip",
        "netrw",
        "netrwPlugin",
        "netrwSettings",
        "netrwFileHandlers",
        "logipat",
        "matchit",
        "matchparen",
        "tar",
        "tarPlugin",
        "rrhelper",
        "spellfile_plugin",
        "vimball",
        "vimballPlugin",
        "zip",
        "zipPlugin",
        "logipat",
        "matchit",
        "tutor",
        "rplugin",
        "syntax",
        "synmenu",
        "optwin",
        "compiler",
        "bugreport",
        "ftplugin",
        "archlinux",
        "fzf",
        "tutor_mode_plugin",
        "sleuth",
        "vimgrep"
      },
    },
  },
}
)
