local fn = vim.fn
local M = function ()
  local current = fn.line "."
  local total = fn.line "$"
  local text = math.modf((current / total) * 100) .. tostring "%%"

  text = (current == 1 and "Top") or text
  text = (current == total and "Bot") or text

  return "  " .. "%#StalineProgressSep#" .. "" .. "%#StalineProgressIcon#" .. " " .. "%#StalineProgress#" .. " " .. text .. " | " .. current .. "/" .. total .. " " .. "%#StalineEmptySpace#"
end

return M
