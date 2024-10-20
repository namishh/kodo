-- Formatting Code on Save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  callback = function()
    for _, client in ipairs(vim.lsp.get_active_clients()) do
      if client.attached_buffers[vim.api.nvim_get_current_buf()] then
        vim.lsp.buf.format()
        return
      else
        return
      end
    end
  end
})

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function(data)
    local directory = vim.fn.isdirectory(data.file) == 1

    if not directory then
      return
    end

    -- change to the directory
    vim.cmd.cd(data.file)

    -- open the tree
    require("nvim-tree.api").tree.open()
  end
})
