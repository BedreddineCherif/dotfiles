return {
	"ibhagwan/fzf-lua",

	dependencies = { "echasnovski/mini.icons" },

	opts = {
		-- "ivy",
		winopts = {
			split = "belowright new",
			-- border = "single",
			preview = {
				hidden = "hidden",
			},
		},
		files = {
			cwd_prompt = false,
			hidden = false,
		},
		quickfix = {
			only_valid = true,
		},
	},

	config = function(_, opts)
		require("fzf-lua").setup(opts)

		local set = vim.keymap.set
		local fzf = require("fzf-lua")

		set("n", "<leader><leader>", fzf.builtin)
		set("n", "<leader>.", fzf.resume)

		set("n", "<leader>b", fzf.buffers)
		set("n", "<leader>h", fzf.helptags)
		set("n", "<leader>f", fzf.files)
		set("n", "<leader>o", fzf.oldfiles)
		set("n", "<leader>l", fzf.loclist)
		set("n", "<leader>q", fzf.quickfix)
		set("n", "<leader>c", function()
			fzf.files({ cwd = "~/.config" })
		end)
		set("n", "<leader>s", fzf.live_grep)
		set("n", "<leader>z", fzf.zoxide)
	end,
}
