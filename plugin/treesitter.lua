require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"javascript",
		"html",
		"css",
		"scss",
		"vue"
	},

	auto_install = true,

	highlight = {
		enable = true
	}
})
