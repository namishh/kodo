require("impatient") -- Increases Startup Performance
require('themes') -- Lua Colorshceme

-- Core Configuration
require("core.options")
require("core.keybinds")

-- Setting The Statusline
vim.opt.statusline = "%!v:lua.require('staline').run()"

require("plugins") -- All The Plugins
