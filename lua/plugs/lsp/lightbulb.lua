local lightbulb = require("nvim-lightbulb")

lightbulb.setup({
  ignore = { "null-ls" },
  sign = {
    enabled = true,
    priority = 10,
  },
  float = {
    enabled = false,
    text = "ﯦ Code actions available",
    win_opts = {
      border = "solid",
    },
  },
  virtual_text = {
    enabled = true,
    text = "ﮠ",
    hl_mode = "replace",
  },
  status_text = {
    enabled = true,
    text = "Actions",
    text_unavailable = "None",
  },
})

vim.cmd [[autocmd CursorHold,CursorHoldI * lua require('nvim-lightbulb').update_lightbulb()]]
