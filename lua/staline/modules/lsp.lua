-- thanks nvchad
-- TODO WORK IN PROGRESS
local M = function()
  for _, client in ipairs(vim.lsp.get_active_clients()) do
    if client.name == '' then
      return ""
    else
      return "%#StalineLspName#" .. "   LSP ~ " .. client.name .. "  " .. "%#StalineEmptySpace#"
    end
  end
end

return M
