return function(colors)
  return {
    AlphaHeader = { fg = colors.color4, bg = colors.background },
    AlphaLabel = { fg = colors.color7, bg = colors.background },
    -- DashButtonsSpl = { bg = colors.color5, fg = colors.background, bold = true, },
    AlphaIcon = { fg = colors.color5, bold = true, },
    AlphaKeyPrefix = { bg = colors.cursorline, fg = colors.color1, },
    AlphaMessage = { fg = colors.color2, bg = colors.background },
    AlphaFooter = { fg = colors.comment, bg = colors.background },
  }
end
