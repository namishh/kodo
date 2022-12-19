local fn = vim.fn

local M = function(m)
  local directory = "%#StalineFolderText#" .. " " .. fn.fnamemodify(fn.getcwd(), ":t") .. " "
  if (m == 'min') then
    local icon = "%#StalineFolderIcon#" .. " DIR "
    return icon .. directory .. "%#StalineEmptySpace#" .. " "
  elseif (m == 'fancy') then
    local icon = "%#StalineFolderIcon#" .. " "
    return "%#StalineFolderSep#" .. "" .. icon .. directory .. "%#StalineEmptySpace#" .. " "
  else
    return 'f'
  end
end

return M
