-- ~/.config/nvim/lua/custom/plugins/fuzzy-finder.lua

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		-- Keymaps will be set in a dedicated file
	end,
}
