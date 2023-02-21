-- so after a very unsucessful attempt at ripping off nvchad, i am making my own shit
local devicons = require("nvim-web-devicons")
local config = require("core.cfg").bufferline
local M = {}
-- creating commands
vim.cmd "function! BufflineGoToBuf(bufnr,b,c,d) \n execute 'b'..a:bufnr \n endfunction"
vim.cmd [[
   function! BufflineKillBuf(bufnr,b,c,d)
        call luaeval('require("ui.buf.fn").close_buffer(_A)', a:bufnr)
  endfunction]]
vim.api.nvim_create_user_command("BufflinePrev", function()
  require("ui.buf.fn").tabuflinePrev()
end, {})
vim.api.nvim_create_user_command("BufflineNext", function()
  require("ui.buf.fn").tabuflineNext()
end, {})
local createTab = function(buf)
  local close_btn = "%" .. buf .. "@BufflineKillBuf@  %X"
  local filename = (#vim.api.nvim_buf_get_name(buf) ~= 0) and vim.fn.fnamemodify(vim.api.nvim_buf_get_name(buf), ":t") or
      ""

  for _, buffer in pairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_is_valid(buffer) and vim.api.nvim_buf_is_loaded(buffer) then
      if filename == vim.fn.fnamemodify(vim.api.nvim_buf_get_name(buffer), ":t") and buffer ~= buf then
        local other = {}
        for match in (vim.api.nvim_buf_get_name(buffer) .. "/"):gmatch("(.-)" .. "/") do
          table.insert(other, match)
        end

        local current = {}
        for match in (vim.api.nvim_buf_get_name(buf) .. "/"):gmatch("(.-)" .. "/") do
          table.insert(current, match)
        end

        filename = current[#current]

        for i = #current - 1, 1, -1 do
          local value_current = current[i]
          local other_current = other[i]

          if value_current ~= other_current then
            filename = value_current .. '/' .. filename
            break
          end
        end
        break
      end
    end
  end
  if buf == vim.api.nvim_get_current_buf() then
    filename = "%#BufflineBufOnActive#" .. filename .. "%#BufflineEmpty#"
    close_btn = (vim.bo[0].modified and "%" .. buf .. "@BufflineKillBuf@%#BuffLineBufOnModified# ")
        or ("%#BuffLineBufOnClose#" .. close_btn)
  else
    close_btn = (vim.bo[buf].modified and "%" .. buf .. "@BufflineKillBuf@%#BuffLineBufOffModified# ")
        or ("%#BuffLineBufOffClose#" .. close_btn)
  end
  return "%" .. buf .. "@BufflineGoToBuf@" .. filename .. "  " .. close_btn .. '  %X'
end

local excludedFileTypes = { 'NvimTree', 'help', 'dasher', 'lir', 'alpha', "toggleterm" }

local new_hl = function(group1, group2)
  local fg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID(group1)), "fg#")
  local bg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID(group2)), "bg#")
  vim.api.nvim_set_hl(0, "Buffline" .. group1 .. group2, { fg = fg, bg = bg })
  return "%#" .. "Buffline" .. group1 .. group2 .. "#"
end

local treeWidth = function()
  for _, win in pairs(vim.api.nvim_tabpage_list_wins(0)) do
    if vim.bo[vim.api.nvim_win_get_buf(win)].ft == "NvimTree" then
      return vim.api.nvim_win_get_width(win) + 1
    end
  end
  return 0
end

M.getTabline = function()
  local buffline = "%#BufflineEmpty# "

  local counter = 1
  for _, buf in pairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_is_valid(buf) and vim.api.nvim_buf_is_loaded(buf) and vim.bo[buf].buflisted then
      local filename = vim.api.nvim_buf_get_name(buf):match("^.+/(.+)$") or ""

      local icon, icon_hl = devicons.get_icon(filename, string.match(filename, "%a+$"))

      if not icon then
        icon, icon_hl = devicons.get_icon "default_icon"
      end
      if config.icons then
        icon = (
            vim.api.nvim_get_current_buf() == buf and new_hl(icon_hl, "BuffLineBufOn") .. " " .. icon
            or new_hl(icon_hl, "BuffLineBufOff") .. " " .. icon
            )
      else
        icon = ''
      end
      local conditions = vim.tbl_contains(excludedFileTypes, vim.bo[buf].ft)
      if conditions then goto do_nothing else filename = "  " .. icon .. " %#BufflineEmpty#" .. createTab(buf) end
      buffline = buffline .. filename
      counter = counter + 1
    end
    ::do_nothing::
  end
  local treespace
  if treeWidth() > 2 then
    treespace = "%#NvimTreeNormal#" ..
        string.rep(" ", treeWidth() / 2 - 5) .. "File Explorer" .. string.rep(" ", treeWidth() / 2 - 5)
  else
    treespace = "%#NvimTreeNormal#" .. string.rep(" ", treeWidth())
  end
  return treespace .. buffline
end

M.setup = function()
  if #vim.fn.getbufinfo { buflisted = 1 } >= 1 then
    vim.o.showtabline = 2
    vim.o.tabline = '%!v:lua.require("ui.buf").getTabline()'
  end
end
vim.cmd [[
nnoremap <silent><TAB> :BufflineNext<CR>
nnoremap <silent><S-TAB> :BufflinePrev<CR>
]]
return M
