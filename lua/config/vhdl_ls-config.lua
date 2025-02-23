local lsp_setup = require("config/lsp_setup")
local lspconfig = require("lspconfig")

lspconfig.vhdl_ls.setup {
	on_attach = lsp_setup.on_attach,
	capabilities = lsp_setup.capabilities,
}
