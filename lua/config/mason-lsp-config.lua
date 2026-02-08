local lsp_setup = require("config/lsp_setup")
local language_servers = {
	"clangd",
	"omnisharp",
	"ts_ls",
	"jsonls",
	"cssls",
	"html",
	"gopls",
	"emmylua_ls"
}

for _, language_server in ipairs(language_servers) do
	vim.lsp.config(language_server, {
		on_attach = lsp_setup.on_attach,
		capabilities = lsp_setup.capabilities
	})
end

vim.lsp.config('omnisharp', {
	settings = {
		FormattingOptions = {
			EnableEditorConfigSupport = true,
			OrganizeImports = nil,
		},
		MsBuild = {
			LoadProjectsOnDemand = nil,
		},
		RoslynExtensionsOptions = {
			EnableAnalyzersSupport = nil,
			EnableImportCompletion = nil,
			AnalyzeOpenDocumentsOnly = nil,
		},
		Sdk = {
			IncludePrereleases = true,
		},
	},

	handlers = {
		["textDocument/definition"] = require('omnisharp_extended').definition_handler,
		["textDocument/typeDefinition"] = require('omnisharp_extended').type_definition_handler,
		["textDocument/references"] = require('omnisharp_extended').references_handler,
		["textDocument/implementation"] = require('omnisharp_extended').implementation_handler,
	},
})

vim.lsp.config('emmylua_ls', {
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
			},
			diagnostics = {
				globals = {
					'vim',
					'require',
				},
			},
		},
	},
})

require("mason-lspconfig").setup {
	ensure_installed = language_servers,
}
