return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<C-l>', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<C-j>', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<C-h>', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<C-k>', function()
      harpoon:list():select(4)
    end)

    vim.keymap.set('n', '<leader>al', function()
      local item = harpoon:list():add()
      item:replace_at(1)
    end)
    vim.keymap.set('n', '<leader>aj', function()
      local item = harpoon:list():add()
      item:replace_at(2)
    end)
    vim.keymap.set('n', '<leader>ah', function()
      local item = harpoon:list():add()
      item:replace_at(3)
    end)
    vim.keymap.set('n', '<leader>ak', function()
      local item = harpoon:list():add()
      item:replace_at(4)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    --vim.keymap.set('n', '<C-S-J>', function()
    -- harpoon:list():prev()
    --end)
    --vim.keymap.set('n', '<C-S-K>', function()
    -- harpoon:list():next()
    --end)
  end,
}
