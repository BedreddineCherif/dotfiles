return {
	"saghen/blink.cmp",
	version = "*",
	opts = {
		snippets = { preset = "mini_snippets" },
		signature = { enabled = true },
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
