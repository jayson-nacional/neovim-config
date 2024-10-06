local lspconfig = require('lspconfig')
local lsp_setup = require('config/lsp_setup')

lspconfig.gopls.setup({
	cmd = { "gopls" }
})
