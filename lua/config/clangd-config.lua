local lspconfig = require('lspconfig')
local lsp_setup = require("config/lsp_setup")

lspconfig.clangd.setup({
	cmd = { 'clangd', '--background-index', '--clang-tidy', '--log=verbose' },

	capabilities = lsp_setup.capabilities,

	on_attach = lsp_setup.on_attach,
})
