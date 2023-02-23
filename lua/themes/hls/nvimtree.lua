return function(colors)
  return {
    NvimTreeNormal = { fg = colors.foreground, bg = colors.background },
    NvimTreeNormalNC = { fg = colors.foreground, bg = colors.background },
    NvimTreeRootFolder = { fg = colors.color1 },
    NvimTreeGitDirty = { fg = colors.color1 },
    NvimTreeGitNew = { fg = colors.color12 },
    NvimTreeGitDeleted = { fg = colors.color1 },
    NvimTreeSpecialFile = { fg = colors.color12 },
    NvimTreeIndentMarker = { fg = colors.color0 },
    NvimTreeImageFile = { fg = colors.foreground },
    NvimTreeSymlink = { fg = colors.color12 },
    NvimTreeFolderIcon = { fg = colors.color11, bg = colors.background },
    NvimTreeFolderName = { fg = colors.foreground },
    NvimTreeOpenedFolderName = { fg = colors.foreground },
    NvimTreeEmptyFolderName = { fg = colors.foreground },
    NvimTreeStatusLineNC = { bg = colors.background, fg = colors.background },
  }
end
