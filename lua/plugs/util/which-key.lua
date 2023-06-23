local wk = require("which-key")
wk.setup {
}

local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function()
  local float = Terminal:new({ direction = "float" })
  return float:toggle()
end


local mappings = {
  q = {
    name = 'File',
    q = { ":q<cr>", "Quit" },
    w = { ":wq<cr>", "Save & Quit" },
    s = { ":w<cr>", "Save" },
    x = { ":bdelete<cr>", "Close" },
  },
  f = {
    name = 'Telescope',
    f = { ":Telescope find_files<cr>", "Find Files" },
    g = { ":Telescope oldfiles<cr>", "Recently Opened" },
    r = { ":Telescope live_grep<cr>", "Find String" },
  },
  t = {
    name = "Terminal",
    t = { ":ToggleTerm<cr>", "Split Below" },
    f = { toggle_float, "Floating Terminal" },
  },
  l = {
    name = "Misc",
    l = { ":Lazy<cr>", "Open Lazy" },
    c = { ":lua vim.lsp.buf.code_action()<cr>", "Show Code Actions" },
    m = { ":Mason<cr>", "Open Mason" },
  },
}

local opts = { prefix = '<leader>' }
wk.register(mappings, opts)
