vim.cmd.colorscheme("nirvana")

require("impatient")
-- All The Plugins
require("plugins")

-- Core Configuration
require("core.options")
require("core.keybinds")

-- Loading The Statusline
require("staline").setup("minimal")
