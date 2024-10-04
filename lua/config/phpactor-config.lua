local lsp_setup = require("config.lsp_setup")
local lspconfig = require("lspconfig")

lspconfig.phpactor.setup({
	cmd = { "phpactor",  "language-server" },
	filetypes = { "php" },
	capabilities = lsp_setup.capabilities,
	on_attach = lsp_setup.on_attach
})
