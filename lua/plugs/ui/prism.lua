local cfg = require("core.cfg")

require("prism"):setup({
  customSchemes = cfg.customSchemes,
  currentTheme = "fovere",
  reset = false,
  customFiles = vim.fn.stdpath "config" .. "/lua/hls",
  transparent = false,
  reload = {},
})
