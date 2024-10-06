require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "go", "c_sharp", "lua", "json", "php", "typescript", "css", "bicep", "yaml" },

	sync_install = false,

	highlight = {
		enable = true,
	},

	indent = {
		enable = true
	},
}
