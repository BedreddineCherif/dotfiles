return {
	"nvim-treesitter/nvim-treesitter",

	build = ":TSUpdate",

	opts = {
		ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "make" },
		auto_install = true,
		sync_install = false,
		highlight = { enable = true },
		indent = { enable = true },
	},
}
