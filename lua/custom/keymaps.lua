local keymap = vim.keymap.set

-- Set keymaps for neo-tree (file explorer)
keymap("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle file explorer" })

-- Set keymaps for telescope (fuzzy finder)
local telescope_builtin = require("telescope.builtin")
keymap("n", "<leader>ff", telescope_builtin.find_files, { desc = "Find files" })
keymap("n", "<leader>fg", telescope_builtin.live_grep, { desc = "Grep for text" })
keymap("n", "<leader>fb", telescope_builtin.buffers, { desc = "Show open buffers" })

-- Set keymap for formatting
keymap({ "n", "v" }, "<leader>cf", function()
	require("conform").format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	})
end, { desc = "Format code" })

-- [[ ADD THIS SECTION ]]
-- Set keymaps for toggleterm
local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

keymap("n", "<leader>t", "<cmd>ToggleTerm<cr>", { desc = "Toggle floating terminal" })
keymap("n", "<leader>lg", function()
	lazygit:toggle()
end, { desc = "Toggle lazygit" })

function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	keymap("t", "<esc>", [[<C-\><C-n>]], opts)
	keymap("t", "jk", [[<C-\><C-n>]], opts)
	keymap("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	keymap("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	keymap("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	keymap("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
