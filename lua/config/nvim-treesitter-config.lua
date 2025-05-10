require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "go", "c_sharp", "lua", "json", "php", "typescript", "css", "bicep", "yaml", "vhdl", "sql" },

	sync_install = false,

	highlight = {
		enable = true,
	},

	indent = {
		enable = true
	},
}
