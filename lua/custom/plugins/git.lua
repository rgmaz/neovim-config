-- ~/.config/nvim/lua/custom/plugins/git.lua

return {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup()
  end,
}
