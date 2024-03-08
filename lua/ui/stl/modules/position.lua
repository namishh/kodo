local fn = vim.fn

local modes = require("ui.stl.modes")
local api = vim.api

local M = function(m)
  local mode = api.nvim_get_mode().mode
  local current = fn.line "."
  local total = fn.line "$"
  if (m == 'blocks') then
    return "%#StalineProgress#" ..
        " " .. current .. "/" .. total .. " " .. "%#StalineProgressIcon#" .. " " .. "%#StalineEmptySpace#"
  elseif (m == 'minimal') then
    return " %#StalineNix#   " .. "%#StalineProgressMinimal#" ..
        " " .. current .. "/" .. total .. " " .. "%#" .. modes[mode][2] .. "#" .. " " .. "%#StalineEmptySpace#"
  elseif (m == 'fancy') then
    return "%#StalineProgressIcon#" ..
        "   " .. "%#StalineProgress#" .. " " .. current .. "/" .. total .. " " .. "%#StalineEmptySpace#"
  else
    return "F"
  end
end

return M
