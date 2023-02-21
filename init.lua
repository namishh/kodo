require("plugs")

local ispcthere, _ = pcall(require, "packer_compiled")
if not ispcthere then
  vim.cmd [[
    :PackerSync
  ]]
end

require("core.opts")
require("core.keys")
require("ui")
