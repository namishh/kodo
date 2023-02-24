-- needs xrdb
local function get_xresources_color(c)
  local command = io.popen('xrdb -query | grep ' .. c .. ' -m 1 | cut -f 2')
  local color = command:read("*l")
  return color
end

local M = {}

M.get_colors = function()
  return {
    foreground = get_xresources_color('foreground'),
    background = get_xresources_color('background'),
    black = get_xresources_color('background'),
    comment = get_xresources_color('comment'),
    cursorline = get_xresources_color('cursorline'),
    contrast = get_xresources_color('cursorline'),
    color0 = get_xresources_color('color0'),
    color1 = get_xresources_color('color1'),
    color2 = get_xresources_color('color2'),
    color3 = get_xresources_color('color3'),
    color4 = get_xresources_color('color4'),
    color5 = get_xresources_color('color5'),
    color6 = get_xresources_color('color6'),
    color7 = get_xresources_color('color7'),
    color8 = get_xresources_color('color8'),
    color9 = get_xresources_color('color9'),
    color10 = get_xresources_color('color10'),
    color11 = get_xresources_color('color11'),
    color12 = get_xresources_color('color12'),
    color13 = get_xresources_color('color13'),
    color14 = get_xresources_color('color14'),
    color15 = get_xresources_color('color15'),
    none = 'NONE',
  }
end

return M
