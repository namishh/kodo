local M = {}
local files = vim.fn.stdpath "config" .. "/colors/"

M.themes = {}

M.toggleTheme = function()
  for _, file in ipairs(vim.fn.readdir(files)) do
    local integration = vim.fn.fnamemodify(file, ":r")
    table.insert(M.themes, integration)
  end

  local t = M.themes[math.random(#M.themes)]
  vim.cmd("colorscheme " .. t)
end

return M
