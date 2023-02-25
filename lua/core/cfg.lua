local M = {}
local stats = require("lazy").stats()
local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
M.statusstyle = 'minimal'

local logos = setmetatable({
  TEXT = {
    "███╗   ██╗██╗   ██╗      ██╗██████╗ ███████╗",
    "████╗  ██║██║   ██║      ██║██╔══██╗██╔════╝",
    "██╔██╗ ██║██║   ██║█████╗██║██║  ██║█████╗  ",
    "██║╚██╗██║╚██╗ ██╔╝╚════╝██║██║  ██║██╔══╝  ",
    "██║ ╚████║ ╚████╔╝       ██║██████╔╝███████╗",
    "╚═╝  ╚═══╝  ╚═══╝        ╚═╝╚═════╝ ╚══════╝",
  },
  UWU = {
    '       ⡆⣸⡟⣼⣯⠏⣾⣿⢸⣿⢸⣿⣿⣿⣿⣿⣿⡟⠸⠁⢹⡿⣿⣿⢻⣿⣿⣿⣿⠄       ',
    '       ⡇⡟⣸⢟⣫⡅⣶⢆⡶⡆⣿⣿⣿⣿⣿⢿⣛⠃⠰⠆⠈⠁⠈⠙⠈⠻⣿⢹⡏⠄       ',
    '       ⣧⣱⡷⣱⠿⠟⠛⠼⣇⠇⣿⣿⣿⣿⣿⣿⠃⣰⣿⣿⡆⠄⠄⠄⠄⠄⠉⠈⠄⠄       ',
    '       ⡏⡟⢑⠃⡠⠂⠄⠄⠈⣾⢻⣿⣿⡿⡹⡳⠋⠉⠁⠉⠙⠄⢀⠄⠄⠄⠄⠄⠂⠄       ',
    '       ⡇⠁⢈⢰⡇⠄⠄⡙⠂⣿⣿⣿⣿⣱⣿⡗⠄⠄⠄⢀⡀⠄⠈⢰⠄⠄⠄⠐⠄⠄       ',
    '       ⠄⠄⠘⣿⣧⠴⣄⣡⢄⣿⣿⣿⣷⣿⣿⡇⢀⠄⠤⠈⠁⣠⣠⣸⢠⠄⠄⠄⠄⠄       ',
    '       ⢀⠄⠄⣿⣿⣷⣬⣵⣿⣿⣿⣿⣿⣿⣿⣷⣟⢷⡶⢗⡰⣿⣿⠇⠘⠄⠄⠄⠄⠄       ',
    '       ⣿⠄⠄⠘⢿⣿⣿⣿⣿⣿⣿⢛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⢄⡆⠄⢀⣪⡆⠄⣿       ',
  },
},
  {
    __index = function(logos, key)
      return logos[key]
    end,
  }
)

M.dashboard = {
  header = logos.TEXT,
  buttons = {
    { "  Find File",    "LDR f f", "Telescope find_files" },
    { "  Recent Files", "LDR f g", "Telescope oldfiles" },
    { "  Find Word",    "LDR f r", "Telescope live_grep" },
  },
  message = {
    "[ ━━━━━━ ❖  ━━━━━━ ]",
  },
  footer = {
    "Loaded " .. stats.count .. " plugins in " .. ms .. " ms!",
  }
}

M.colorscheme = 'decay'
return M
