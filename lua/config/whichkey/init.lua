local wk = require("which-key")
wk.setup {
}

local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function()
  local float = Terminal:new({ direction = "float" })
  return float:toggle()
end
local toggle_lazygit = function()
  local lazygit = Terminal:new({ cmd = 'lazygit', direction = "float" })
  return lazygit:toggle()
end


local mappings = {
  q = { ":q<cr>", "Quit" },
  Q = { ":wq<cr>", "Save & Quit" },
  w = { ":w<cr>", "Save" },
  x = { ":bdelete<cr>", "Close" },
  E = { ":e ~/.config/nvim/init.lua<cr>", "Edit config" },
  f = { ":Telescope find_files<cr>", "Telescope Find Files" },
  g = { ":Telescope oldfiles<cr>", "Telescope Recently Opened" },
  r = { ":Telescope live_grep<cr>", "Telescope Live Grep" },
  t = {
    t = { ":ToggleTerm<cr>", "Split Below" },
    f = { toggle_float, "Floating Terminal" },
    l = { toggle_lazygit, "LazyGit" }
  },
  p = {
    name = "Packer",
    r = { ":PackerClean<cr>", "Remove Unused Plugins" },
    c = { ":PackerCompile profile=true<cr>", "Recompile Plugins" },
    i = { ":PackerInstall<cr>", "Install Plugins" },
    p = { ":PackerProfile<cr>", "Packer Profile" },
    s = { ":PackerSync<cr>", "Sync Plugins" },
    S = { ":PackerStatus<cr>", "Packer Status" },
    u = { ":PackerUpdate<cr>", "Update Plugins" }
  },
  m = { ":Mason<cr>", "Open Mason" }
}

local opts = { prefix = '<leader>' }
wk.register(mappings, opts)
