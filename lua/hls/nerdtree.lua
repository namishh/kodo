local utils = require("prism.utils")
local colors = require("prism.themer"):getColors()
return {
  NvimTreeFolderIcon = { fg = utils.darken(colors.color3, colors.cursorline, 0.85), bg = colors.darker },
}
