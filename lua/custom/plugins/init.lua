-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvim-tree/nvim-tree.lua',
    opts = {
      sort_by = 'case_sensitive',
      view = { width = 30 },
      renderer = { group_empty = true },
      filters = { dotfiles = false },
    },
    config = function(_, opts)
      require('nvim-tree').setup(opts)
      -- Set keybinding to toggle Nvim-Tree
      vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle Nvim-Tree' })
    end,
  },
}
