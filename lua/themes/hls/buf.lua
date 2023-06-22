return function(colors)
  return {
    BufflineBufOnActive = { bg = colors.color4, fg = colors.background },
    BufflineBufOnInactive = { fg = colors.color7, bg = colors.cursorline },
    BuffLineBufOnModified = { bg = colors.color4, fg = colors.background },
    BuffLineBufOnClose = { bg = colors.color4, fg = colors.background },
    BuffLineBufOffClose = { fg = colors.color9, bg = colors.contrast },
    BuffLineTree = { bg = colors.darker, fg = colors.white },
    BuffLineEmpty = { bg = colors.background, fg = colors.white },
    BuffLineEmptyColor = { bg = colors.cursorline, fg = colors.white },
    BuffLineButton = { bg = colors.color0, fg = colors.color4 },
    BuffLineCloseButton = { bg = colors.color9, fg = colors.background }
  }
end
