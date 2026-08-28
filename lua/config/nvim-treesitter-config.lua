require 'nvim-treesitter'.setup {
	ensure_installed = { "c", "typescript", "json", "css", "html", "go", "lua", "yaml" },

	sync_install = false,

	highlight = {
		enable = true,
	},

	indent = {
		enable = true
	},
}
