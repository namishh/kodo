local cmp = require("cmp")
vim.g.completeopt = "menu,menuone,noselect,noinsert"


local function border(hl_name)
  return {
    { "╭", hl_name },
    { "─", hl_name },
    { "╮", hl_name },
    { "│", hl_name },
    { "╯", hl_name },
    { "─", hl_name },
    { "╰", hl_name },
    { "│", hl_name },
  }
end

local cmp_window = require "cmp.utils.window"

cmp_window.info_ = cmp_window.info
cmp_window.info = function(self)
  local info = self:info_()
  info.scrollable = false
  return info
end

local kind_icons = {
  Namespace = " ",
  Text = " ",
  Method = " ",
  Function = " ",
  Constructor = " ",
  Field = " ",
  Variable = " ",
  Class = " ",
  Interface = " ",
  Module = " ",
  Property = " ",
  Unit = " ",
  Number = " ",
  Constant = " ",
  Enum = " ",
  EnumMember = " ",
  Keyword = " ",
  Snippet = " ",
  Color = " ",
  File = " ",
  Reference = " ",
  Folder = " ",
  Struct = " ",
  Event = " ",
  Operator = " ",
  TypeParameter = " ",
  Table = " ",
  Object = " ",
  Tag = " ",
  Array = " ",
  Boolean = " ",
  Value = " ",
  Null = " ",
  String = " ",
  Calendar = " ",
  Watch = " ",
  Package = " ",
  Copilot = " ",
}
local options = {
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  preselect = cmp.PreselectMode.Item,
  window = {
    documentation = {
      border = "solid",
    },
    completion = {
      border = "none",
      completeopt = "menu,menuone,noinsert",
      keyword_length = 1,
    },
  },
  view = {
    entries = {
      name = "custom",
    },
  },
  formatting = {
    fields = { "abbr", "kind", "menu" },
    format = function(_, item)
      item.kind = kind_icons[item.kind] .. " " .. item.kind
      return item
    end,
  },
  mapping = {
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ["<C-d>"] = cmp.mapping.scroll_docs( -4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    },
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif require("luasnip").expand_or_jumpable() then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
      else
        fallback()
      end
    end,
      {
        "i",
        "s",
      }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif require("luasnip").jumpable( -1) then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
  },
  sources = {
    { name = "luasnip" },
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "nvim_lua" },
    { name = "path" },
  },
}

cmp.setup(options)
