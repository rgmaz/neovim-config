return {
	-- Colorscheme
	{
		"navarasu/onedark.nvim",
		priority = 1000, -- Ensure it loads first
		config = function()
			-- Load the colorscheme here
			vim.cmd.colorscheme("onedark")
		end,
	},

	-- Icons
	{
		"nvim-tree/nvim-web-devicons",
		lazy = true,
	},

	-- Status line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = "auto", -- Use the theme from your colorscheme
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
				},
			})
		end,
	},

	-- Buffer line
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("bufferline").setup({
				options = {
					mode = "buffers",
					separator_style = "thin",
					show_buffer_close_icons = false,
					show_close_icon = false,
				},
			})
		end,
	},

	-- Indentation guides
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},
}
