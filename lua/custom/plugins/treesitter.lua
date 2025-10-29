return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			-- A list of parser names, or "all"
			ensure_installed = {
				"lua",
				"vim",
				"vimdoc",
				"python",
				"html",
				"css",
				"javascript",
				"typescript",
			},

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			-- Automatically install missing parsers when entering buffer
			auto_install = true,

			-- Enable syntax highlighting
			highlight = {
				enable = true,
			},

			-- Enable indentation based on treesitter
			indent = {
				enable = true,
			},
		})
	end,
}
