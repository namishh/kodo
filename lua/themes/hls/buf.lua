return function(colors)
  return {
    BufflineBufOnActive = { bg = colors.color4, fg = colors.background },
    BufflineBufOnInactive = { fg = colors.color7, bg = colors.contrast },
    BuffLineBufOnModified = { bg = colors.color4, fg = colors.background },
    BuffLineBufOnClose = { bg = colors.color4, fg = colors.background },
    BuffLineBufOffClose = { fg = colors.color9, bg = colors.contrast },
    BuffLineTree = { bg = colors.background, fg = colors.white },
    BuffLineEmpty = { bg = colors.background, fg = colors.white },
  }
end
