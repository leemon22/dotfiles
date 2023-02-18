require'nvim-treesitter.configs'.setup {
	ensure_installed = {
		"lua",
		"javascript",
		"typescript",
		"html",
		"css",
        "c",
		"cpp",
		"c_sharp",
		"python",
		"java",
		"bash",
		"json"
	},
	highlight = {
		enable = true,
		use_languagetree = true,
	},
}
