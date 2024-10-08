local lspconfig = require("lspconfig")
local lsp_setup = require("config/lsp_setup")

lsp_setup.capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.jsonls.setup({
	on_attach = lsp_setup.on_attach,

	capabilities = lsp_setup.capabilities,
})
