local DEFAULT_STATUS_STYLE = require('core.cfg').statusstyle


vim.api.nvim_create_autocmd({ "CursorHold", "UIEnter" }, {
  callback = function()
    vim.opt.laststatus = 3 -- Global Status
    require("ui.stl").setup(DEFAULT_STATUS_STYLE)
  end
})

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  pattern = "*",
  callback = function()
    require("ui.buf").setup()
  end,
})
