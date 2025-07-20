local lsp_setup = require("config/lsp_setup")
local lspconfig = require("lspconfig")
lsp_setup.capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.html.setup {
	on_attach = lsp_setup.on_attach,
	capabilities = lsp_setup.capabilities,
}
