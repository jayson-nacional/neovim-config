require'nvim-treesitter.configs'.setup {
	ensure_installed = { "lua", "c_sharp", "json", "php", "typescript", "css", "c", "bicep", "yaml" },

	sync_install = false,

	highlight = {
		enable = true,
	},

	indent = {
		enable = true
	},
}
