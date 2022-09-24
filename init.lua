require('impatient')
require('themes')
require("plugins")
require("core")
vim.opt.statusline = "%!v:lua.require('staline').run()"

