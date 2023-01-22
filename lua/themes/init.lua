local highlights = require('themes.highlights')

local function setup(opts)
  if opts == nil then opts = { theme = "nirvana" } end
  local colors = require('themes.colorschemes.' .. opts.theme).get_colors()
  highlights.highlight_all(colors, opts)
end

return { setup = setup }
