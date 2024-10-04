local lsp_setup = require("config/lsp_setup")
local lspconfig = require("lspconfig")
lspconfig.omnisharp.setup {
	cmd = { "dotnet", "/home/son369/Development/language-servers/omnisharp/OmniSharp.dll" },

	on_attach = lsp_setup.on_attach,

	capabilities = lsp_setup.capabilities,

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
}
