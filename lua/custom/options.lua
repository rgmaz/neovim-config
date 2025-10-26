-- ~/.config/nvim/lua/custom/options.lua

-- General editor options
vim.opt.number = true         -- Show line numbers
vim.opt.relativenumber = true   -- Show relative line numbers
vim.opt.cursorline = true       -- Highlight the current line
vim.opt.termguicolors = true    -- Enable true color support
vim.opt.scrolloff = 8           -- Keep 8 lines visible above/below the cursor
vim.opt.sidescrolloff = 8       -- Keep 8 columns visible left/right of the cursor

-- Tab/indentation settings
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search settings
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Disable swap files and backups
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
