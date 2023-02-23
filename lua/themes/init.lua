local highlights = require('themes.hl')
local function setup(opts)
  if opts == nil then opts = { theme = "pop" } end
  local colors = require('themes.schemes.' .. opts.theme).get_colors()
  highlights.highlight_all(colors, opts)
end

return { setup = setup }
