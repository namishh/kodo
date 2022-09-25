local fn = vim.fn
local M = function ()
  local current = fn.line "."
  local total = fn.line "$"

  return "  " .. "%#StalineProgressSep#" .. "" .. "%#StalineProgressIcon#" .. " " .. "%#StalineProgress#" .. " " .. current .. "/" .. total .. " " .. "%#StalineEmptySpace#"
end

return M
