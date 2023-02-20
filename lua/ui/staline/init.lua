local run = function(STYLE)
  local mode = require("ui.staline.modules.mode")
  local filename = require("ui.staline.modules.filename")
  local branch = require("ui.staline.modules.branch")
  local diff = require("ui.staline.modules.diff")
  local folder = require("ui.staline.modules.folder")
  local position = require("ui.staline.modules.position")
  local diagnostics = require("ui.staline.modules.diagnostics")
  local lsp = require("ui.staline.modules.lsp")
  return table.concat {
    mode(STYLE),
    filename(),
    branch(),
    diff(STYLE),
    "%=",
    diagnostics(STYLE),
    folder(STYLE),
    lsp(STYLE) or "",
    position(STYLE),
  };
end

local setup = function(STYLE)
  vim.opt.statusline = run(STYLE)
  vim.api.nvim_create_autocmd({ "ModeChanged", "LspAttach" }, {
    callback = function()
      vim.opt.statusline = run(STYLE)
    end
  })
end

return { run = run, setup = setup }
