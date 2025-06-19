return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
    ft = { 'markdown', 'markdown.mdx' }, -- Lazy-load for Markdown files
    opts = {
      file_types = { 'markdown', 'markdown.mdx' },
      render_modes = { 'n', 'c', 'i' }, -- Normal and command modes
      anti_conceal = { enabled = true }, -- Show raw text on cursor line
      pipe_table = { enabled = true, preset = 'round' }, -- Nicer table rendering
      heading = { enabled = true, icons = { '# ', '## ', '### ', '#### ', '##### ', '###### ' } },
    },
    config = function(_, opts)
      require('render-markdown').setup(opts)
      -- Keymap to toggle rendering
      vim.keymap.set('n', '<leader>mr', '<cmd>RenderMarkdown toggle<CR>', { desc = 'Toggle Markdown Rendering' })
    end,
  },
}
