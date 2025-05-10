local lspconfig = require('lspconfig')
local lsp_setup = require("config/lsp_setup")

lspconfig.sqls.setup({
	cmd = { "sqls", "-config", "/home/son369/go/bin/config.yml" },

	capabilities = lsp_setup.capabilities,

	on_attach = lsp_setup.on_attach,
})
