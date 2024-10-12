return {
  { -- File explorer that lets you edit your filesystem like a normal Neovim buffer
    'stevearc/oil.nvim',
    -- Optional dependencies
    dependencies = {
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    config = function()
      require('oil').setup()
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    end,
  },
}
