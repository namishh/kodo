local fn = vim.fn
local M = function()
  local icon = "  "
  local filename = (fn.expand "%" == "" and "Empty ") or fn.expand "%:t"
  local devicons = require("nvim-web-devicons")
  local ft_icon, icon_hl = devicons.get_icon(filename)
  if not icon_hl then
    icon_hl = "nothing"
  end
  if filename == "NvimTree_1" then
    filename = "File Explorer"
  end
  if filename == "[startuptime]" then
    filename = "Startup Time"
  end
  if string.find(filename, "toggleterm") then
    filename = "Terminal"
  end
  if filename ~= "Empty " then
    icon = (ft_icon ~= nil and " " .. ft_icon) or ""
  else
    filename = 'Kodo'
  end
  return "%#StalineFilenameIcon#" .. "%#" .. icon_hl .. "# " .. icon .. "  %#StalineFilename#" .. filename .. "  "
end
return M
