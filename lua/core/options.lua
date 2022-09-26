local cmd = vim.cmd
local opt = vim.opt
local diagnostic = vim.diagnostic
local g = vim.g
opt.hidden = true
opt.pumheight = 2
opt.fileencoding = 'utf-8'
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.conceallevel = 0
opt.showtabline = 2
opt.showmode = false
opt.backup = false
opt.number = true
opt.numberwidth = 3
opt.ruler = false
opt.writebackup = false
opt.updatetime = 300
opt.timeoutlen = 100
opt.clipboard = "unnamedplus"
opt.hlsearch = true
opt.ignorecase = true
opt.scrolloff = 0
opt.sidescrolloff = 5
opt.foldenable = false
opt.mouse = "a" -- Mouse support for noobs
opt.cursorline = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 0
opt.autoindent = true
opt.expandtab = true
opt.fillchars:append('eob: ')
cmd('set lazyredraw')
opt.laststatus=3 -- Global Status
diagnostic.config {signs=false} -- Removinfgdiagnostic column
opt.shortmess:append "sI"
opt.updatetime = 250
opt.shadafile = "NONE"
opt.shadafile = ""
-- Disabling some built in plugins
g.did_load_filetypes = 0
g.do_filetype_lua = 1
local builtins = {
    "2html_plugin",
    "getscript",
    "getscriptPlugin",
    "gzip",
    "logipat",
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "matchit",
    "tar",
    "tarPlugin",
    "rrhelper",
    "vimball",
    "vimballPlugin",
    "zip",
    "zipPlugin",
    "tutor_mode_plugin",
    "fzf",
    "spellfile_plugin",
}

for _, plugin in ipairs(builtins) do
    g["loaded_" .. plugin] = 1
end

