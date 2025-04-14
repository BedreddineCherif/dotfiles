return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"ibhagwan/fzf-lua",
		"echasnovski/mini.pick",
	},
	opts = {
		graph_style = "unicode",
		integrations = {
			fzf_lua = true,
		},
	},
	config = function(_, opts)
		require("neogit").setup(opts)
		vim.keymap.set("n", "<leader>g", "<cmd>Neogit<cr>")
	end,
}
