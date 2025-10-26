-- ~/.config/nvim/lua/custom/plugins/format-lint.lua

return {
	-- Formatter
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				-- UPDATE THIS SECTION
				javascript = { { "prettierd", "prettier" } },
				typescript = { { "prettierd", "prettier" } },
				html = { { "prettierd", "prettier" } },
				css = { { "prettierd", "prettier" } },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		},
	},
	-- Linter
	{
		"mfussenegger/nvim-lint",
		config = function()
			local lint = require("lint")
			-- UPDATE THIS TABLE
			lint.linters_by_ft = {
				python = { "pylint" },
				javascript = { "eslint_d" },
				typescript = { "eslint_d" },
				css = { "stylelint" },
				html = { "tidy" },
			}

			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				callback = function()
					lint.try_lint()
				end,
			})
		end,
	},
}
