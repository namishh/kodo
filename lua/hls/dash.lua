local utils = require("prism.utils")
local colors = require("prism.themer"):getColors()

-- IN THIS DIRECTORY YOU CAN ADD ANY NUMBER OF FILES
-- ALL OF THEM RETURN A TABLE WHICH CONTAINS HIGHLIGHTS TO BE ADDED
-- YOUR HIGHLIGHTS WILL BE PREFFERED OVER THE DEFAULTS

return {
  MiniStarterHeader = { fg = colors.color2 },
  MiniStarterFooter = { fg = utils.darken(colors.comment, colors.black, 0.6) },
  MiniStarterItemBullet = { fg = colors.color4 },
  MiniStarterSection = { fg = colors.color4 },
  MiniStarterItem = { fg = colors.comment },
  MiniStarterCurrent = { fg = colors.foreground },
  MiniStarterItemPrefix = { fg = colors.foreground },
}
