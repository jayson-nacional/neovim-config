require 'nvim-treesitter'.setup {
	ensure_installed = { "c", "c_sharp", "typescript", "json", "css", "html", "go", "lua", "bicep", "yaml" },

	sync_install = false,

	highlight = {
		enable = true,
	},

	indent = {
		enable = true
	},
}
