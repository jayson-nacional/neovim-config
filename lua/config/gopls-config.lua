local lspconfig = require('lspconfig')
local lsp_setup = require('config/lsp_setup')

lspconfig.gopls.setup({
	cmd = { "gopls" },

	on_attach = lsp_setup.on_attach,

	capabilities = lsp_setup.capabilities,
})
