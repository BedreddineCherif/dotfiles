return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "williamboman/mason.nvim", config = true },
		{ "williamboman/mason-lspconfig.nvim", config = true },
		{
			"folke/lazydev.nvim",
			ft = "lua",
			opts = {
				library = {
					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				},
			},
		},
	},
	config = function()
		require("mason-lspconfig").setup_handlers({
			function(server_name)
				require("lspconfig")[server_name].setup({})
			end,
		})
		vim.keymap.set("n", "<leader>m", "<CMD>Mason<CR>")
		vim.diagnostic.config({ virtual_text = false, virtual_lines = { current_line = true } })
	end,
}
