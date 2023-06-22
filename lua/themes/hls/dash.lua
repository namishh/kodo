return function(colors)
  return {
    DashAscii = { fg = colors.color4, bg = colors.background },
    DashButtons = { fg = colors.color7, bg = colors.background },
    -- DashButtonsSpl = { bg = colors.color5, fg = colors.background, bold = true, },
    DashButtonsIco = { bg = colors.cursorline, fg = colors.color5, bold = true, },
    DashButtonsSpl = { bg = colors.cursorline, fg = colors.color1, },
    WilderAccent = { bg = colors.cursorline, fg = colors.color1, },
    DashMessage = { fg = colors.color2, bg = colors.background },
    DashFooter = { fg = colors.comment, bg = colors.background },
  }
end
