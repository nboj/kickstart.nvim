return {
  'stevearc/oil.nvim',
  opts = {},
  config = function()
    require('oil').setup {
      columns = { 'icon' },
      view_options = {
        show_hidden = true,
      },
    }
    vim.keymap.set('n', '<leader>-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
  end,
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}
