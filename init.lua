-- ~/.config/nvim/init.lua

-- Set leader key before any plugins are loaded
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- [[ SET OPTIONS ]]
require('custom.options')

-- [[ CONFIGURE PLUGINS ]]
require('lazy').setup({
  spec = {
    { import = 'custom.plugins' },
  },
  change_detection = {
    enabled = true,
    notify = false,
  },
})

-- [[ SET KEYMAPS ]]
require('custom.keymaps')
