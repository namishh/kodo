local function ExtractHl(name)
	return vim.api.nvim_exec('highlight ' .. name, true):match('guifg=(#[0-9A-Fa-f]+)')
end

require('staline').setup {
    defaults = {
        expand_null_ls = false,  -- This expands out all the null-ls sources to be shown
        left_separator  = "  ",
        right_separator = "",
        full_path       = false,
        line_column = "[%l/%L] :%c",


        fg              = "#0f0f0f",  -- Foreground text color.
        bg              = "none",     -- Default background is transparent.
        inactive_color  = "#212126",
        inactive_bgcolor = "none",
        true_colors     = true,      -- true lsp colors.
        font_active     = "none",     -- "bold", "italic", "bold,italic", etc

        mod_symbol      = "*",
        lsp_client_symbol = "",
        branch_symbol   = " ",
        cool_symbol     = "   ",       -- Change this to override default OS icon.
        null_ls_symbol = "",          -- A symbol to indicate that a source is coming from null-ls
    },
    mode_colors = {
        n = ExtractHl('Blue'),
        i = ExtractHl('Green'),
        c = ExtractHl('Red'),
        V = ExtractHl('Yellow'),
        v = ExtractHl('Yellow'),
    },
    mode_icons = {
        n = "  NORMAL ",
        i = "  INSERT ",
        c = "  COMMAND ",
        v = "  BLOCK ",
        V = "  SELECT",
    },
    sections = {
        left = { '-mode','left_sep_double', {'StalineFilename', 'file_name'}, {"StalineBranch", "branch"}, ' ', 'lsp' },
        mid  = { ' ' },
        right = { {'StalineLogo', 'cool_symbol'}, {'StalineFolderSep', 'right_sep'}, {'StalineFolderIcon','  '}, {'StalineFolderText', 'cwd'}, ' ',  {"StalineProgressSep",'right_sep'}, {"StalineProgressSepIcon",'  '}, {'StalineProgress', 'line_column'} },
    },
    special_table = {
        NvimTree = { 'NvimTree', ' ' },
        packer = { 'Packer',' ' },
        toggleterm = {'Terminal', "  "}-- etc
    },
    lsp_symbols = {
        Error="  ",
        Info="  ",
        Warn="  ",
        Hint=" ",
    },
}

