-- thanks nvchad
local M = function()
  for _, client in ipairs(vim.lsp.get_active_clients()) do
    if client.name == '' then
      return ""
    else
      return "%#StalineLspIcon#" .. "   " .. "%#StalineLspName#" ..  " " .. client.name .. " " .. "%#StalineEmptySpace#" .. " "
    end
  end
end

return M
