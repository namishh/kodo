local DEFAULT_STATUS_STYLE = "minimal"


vim.api.nvim_create_autocmd({ "CursorHold" }, {
  callback = function()
    vim.opt.laststatus = 3 -- Global Status
    require("ui.stl").setup(DEFAULT_STATUS_STYLE)
  end
})
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*",
  callback = function()
    require("ui.buf").setup()
  end,
})

require("ui.dash").open()
-- Resize dashboard
vim.api.nvim_create_autocmd("VimResized", {
  callback = function()
    if vim.bo.filetype == "dasher" then
      vim.opt_local.modifiable = true
      vim.api.nvim_buf_set_lines(0, 0, -1, false, { "" })
      require("ui.dash").open()
    end
  end,
})
