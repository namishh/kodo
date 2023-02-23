return function(colors)
  return {
    TelescopeBorder = {
      fg = colors.cursorline,
      bg = colors.cursorline,
    },
    TelescopePromptBorder = {
      fg = colors.color8,
      bg = colors.color8,
    },
    TelescopePromptNormal = {
      fg = colors.foreground,
      bg = colors.color8,
    },
    TelescopePromptPrefix = {
      fg = colors.color1,
      bg = colors.color8,
    },
    TelescopeNormal = { bg = colors.cursorline },
    TelescopePreviewTitle = {
      fg = colors.cursorline,
      bg = colors.cursorline,
    },
    TelescopePromptTitle = {
      fg = colors.background,
      bg = colors.color9,
    },
    TelescopeResultsTitle = {
      fg = colors.cursorline,
      bg = colors.cursorline,
    },
    TelescopeSelection = { bg = colors.color0, fg = colors.foreground },
    TelescopeResultsDiffAdd = {
      fg = colors.color10,
    },
    TelescopeResultsDiffChange = {
      fg = colors.color11,
    },
    TelescopeResultsDiffDelete = {
      fg = colors.color9,
    },
  }
end
