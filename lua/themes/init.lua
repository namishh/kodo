local M = {}
local core = require('themes.colorschemes.warm')
local highlights = require('themes.highlights')

function M.setup (opts)
  if opts == nil then
    opts = {}
  end
  local colors = core.get_colors()
  vim.opt.termguicolors = true
  highlights.highlight_all(colors, opts)
end

return M
