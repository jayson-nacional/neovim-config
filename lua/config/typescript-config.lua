local lsp_setup = require("config/lsp_setup")
local lspconfig = require("lspconfig")

lspconfig.ts_ls.setup {
	on_attach = lsp_setup.on_attach,
	capabilities = lsp_setup.capabilities,
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
	init_options = {
		hostInfo = "neovim"
	},
}
