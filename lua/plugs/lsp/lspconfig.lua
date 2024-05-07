local lspconfig = require("lspconfig")

local M = {}

M.on_attach = function(client, _)
  client.server_capabilities.documentFormattingProvider = true
  client.server_capabilities.documentRangeFormattingProvider = true
end

M.capabilities = vim.lsp.protocol.make_client_capabilities()

M.capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true
}

M.capabilities.textDocument.completion.completionItem = {
  documentationFormat = { "markdown", "plaintext" },
  snippetSupport = true,
  preselectSupport = true,
  insertReplaceSupport = true,
  labelDetailsSupport = true,
  deprecatedSupport = true,
  commitCharactersSupport = true,
  tagSupport = { valueSet = { 1 } },
  resolveSupport = {
    properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
    },
  },
}


local servers = { "html", "pyright", "tsserver", "emmet_ls", "clangd", "cssls", "rnix", "hls", "gopls",
  "astro", "vuels" }

for _, k in ipairs(servers) do
  lspconfig[k].setup {
    on_attach = M.on_attach,
    capabilities = M.capabilities,
  }
end

lspconfig.rust_analyzer.setup {
  filetypes = { "rust" },
  cmd = { "rustup", "run", "stable", "rust-analyzer" },
}

lspconfig.lua_ls.setup {
  on_attach = M.on_attach,
  capabilities = M.capabilities,

  settings = {
    Lua = {
      completion = {
        callSnippet = "Replace"
      },
      diagnostics = {
        globals = { "vim", "awesome", "client", "screen", "mouse", "tag" },
      },
    },
  }
}

return M
