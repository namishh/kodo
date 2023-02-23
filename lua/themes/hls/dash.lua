return function(colors)
  return {
    DashAscii = { fg = colors.color4, bg = colors.background },
    DashButtons = { fg = colors.color7, bg = colors.background },
    DashButtonsSpl = { bg = colors.color4, fg = colors.background, bold = true, },
    DashButtonsIco = { fg = colors.color4, bg = colors.background, bold = true, },
    DashMessage = { fg = colors.color2, bg = colors.background },
    DashFooter = { fg = colors.comment, bg = colors.background },
  }
end
