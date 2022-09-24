local diagnostic = vim.diagnostic
local M = function ()
  local errors = #diagnostic.get(0, { severity = diagnostic.severity.ERROR })
  local warnings = #diagnostic.get(0, { severity = diagnostic.severity.WARN })
  local hints = #diagnostic.get(0, { severity = diagnostic.severity.HINT })
  local info = #diagnostic.get(0, { severity = diagnostic.severity.INFO })
  local errorstr = (errors and errors > 0) and ("%#StalineLspError#" .. "  " .. errors .. " ") or ""
  local warningstr = (warnings and warnings > 0) and ("%#StalineLspWarning#" .. "  " .. warnings .. " ") or ""
  local hintstr = (hints and hints > 0) and ("%#StalineLspHints#" .. "ﯧ  " .. hints .. " ") or ""
  local infostr = (info and info > 0) and ("%#StalineLspInfo#" .. "  " .. info .. " ") or ""
  return "  " .. errorstr .. warningstr .. hintstr .. infostr .. "  "
end

return M
