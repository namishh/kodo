-- Thanks nvchad/base46
local M           = {}
local hl_files    = vim.fn.stdpath "config" .. "/lua/themes/hls"

M.getCurrentTheme = function()
  local path = "themes.schemes." .. vim.g.currentTheme
  local theme = require(path).get_colors()
  return theme
end

M.mergeTb         = function(...)
  return vim.tbl_deep_extend("force", ...)
end

M.loadTb          = function(g)
  g = require("themes.hls." .. g)
  return g
end

M.tableToStr      = function(tb)
  local result = ""

  for hlgroupName, hlgroup_vals in pairs(tb) do
    local hlname = "'" .. hlgroupName .. "',"
    local opts = ""

    for optName, optVal in pairs(hlgroup_vals) do
      local valueInStr = ((type(optVal)) == "boolean" or type(optVal) == "number") and tostring(optVal)
          or '"' .. optVal .. '"'
      opts = opts .. optName .. "=" .. valueInStr .. ","
    end

    result = result .. "vim.api.nvim_set_hl(0," .. hlname .. "{" .. opts .. "})"
  end

  return result
end

M.toCache         = function(filename, tb)
  local lines = "return string.dump(function()" .. M.tableToStr(tb) .. "end, true)"
  local file = io.open(vim.g.theme_cache .. filename, "wb")

  if file then
    ---@diagnostic disable-next-line: deprecated
    file:write(loadstring(lines)())
    file:close()
  end
end
M.compile         = function()
  if not vim.loop.fs_stat(vim.g.theme_cache) then
    vim.fn.mkdir(vim.g.theme_cache, "p")
  end

  for _, file in ipairs(vim.fn.readdir(hl_files)) do
    local filename = vim.fn.fnamemodify(file, ":r")
    M.toCache(filename, M.loadTb(filename))
  end
end

M.load            = function()
  M.compile()
  for _, file in ipairs(vim.fn.readdir(vim.g.theme_cache)) do
    dofile(vim.g.theme_cache .. file)
  end
end

M.toggleTheme     = function()
  local files = vim.fn.stdpath "config" .. "/colors/"
  for _, file in ipairs(vim.fn.readdir(files)) do
    local integration = vim.fn.fnamemodify(file, ":r")
    table.insert(M.themes, integration)
  end

  local t = M.themes[math.random(#M.themes)]
  vim.cmd("colorscheme " .. t)
end


return M
