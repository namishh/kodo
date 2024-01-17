local M = function(m)
  if not vim.b.gitsigns_head or vim.b.gitsigns_git_status then
    return ""
  end

  local git_status = vim.b.gitsigns_status_dict

  if git_status then
    local added = (git_status.added and git_status.added ~= 0) and (" + " .. git_status.added) or ""
    local changed = (git_status.changed and git_status.changed ~= 0) and (" ~ " .. git_status.changed) or ""
    local removed = (git_status.removed and git_status.removed ~= 0) and (" - " .. git_status.removed) or ""
    if (m == 'minimal') then
      return " " ..
          "%#StalineDiffAdd#" .. added .. "%#StalineDiffChange#" .. changed .. "%#StalineDiffRemove#" .. removed
    elseif (m == 'fancy') then
      return " " ..
          "%#StalineDiffAddFancy#" ..
          added ..
          " " ..
          "%#StalineDiffChangeFancy#" .. changed .. " %#StalineDiffRemoveFancy#" .. removed .. " %#StalineEmptySpace#"
    else
      return "F"
    end
  else
    return " "
  end
end

return M
