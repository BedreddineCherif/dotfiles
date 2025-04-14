return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		require("mini.pairs").setup()
		require("mini.snippets").setup({
			snippets = {
				require("mini.snippets").gen_loader.from_lang(),
			},
		})
		require("mini.icons").setup()
		require("mini.statusline").setup()
	end,
}
