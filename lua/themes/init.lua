local highlights = require('themes.hl')
local function setup(opts)
  if opts == nil then opts = { theme = "pop" } end
  if opts.theme == "xrdb" then
    local colors = require('themes.x').get_colors()
    highlights.highlight_all(colors, opts)
  else
    local colors = require('themes.schemes.' .. opts.theme).get_colors()
    highlights.highlight_all(colors, opts)
  end
end

return { setup = setup }
