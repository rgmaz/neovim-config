-- ~/.config/nvim/lua/custom/plugins/file-explorer.lua

return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- ALREADY INSTALLED
    'MunifTanjim/nui.nvim',
  },
  config = function()
    -- No specific config needed for default setup
    -- Keymaps will be set in a dedicated file
  end,
}
