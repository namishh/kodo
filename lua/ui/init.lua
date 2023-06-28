local DEFAULT_STATUS_STYLE = require('core.cfg').statusstyle


vim.api.nvim_create_autocmd({ "CursorHold", "UIEnter" }, {
  callback = function()
    vim.opt.laststatus = 3 -- Global Status
    require("ui.stl").setup(DEFAULT_STATUS_STYLE)
    require("ui.buf").setup()
  end
})
