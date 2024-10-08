local lspconfig = require("lspconfig")
local lsp_setup = require("config/lsp_setup")

lspconfig.ghdl_ls.setup({
	on_attach = lsp_setup.on_attach,

	capabilities = lsp_setup.capabilities,
})
