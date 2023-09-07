local colorscheme = require("core.cfg").colorscheme
require("prism"):setup({
  colors = colorscheme,
  customFiles = vim.fn.stdpath "config" .. "/lua/hls/",
  customFilesPath = "hls",
  transparent = false,
})
