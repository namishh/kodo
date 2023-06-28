local colors = require("themes").getCurrentTheme()

return {
  DiagnosticError = { fg = colors.color9 },
  DiagnosticWarn = { fg = colors.color11 },
  DiagnosticInfo = { fg = colors.color4 },
  DiagnosticHint = { fg = colors.color6 },
}
