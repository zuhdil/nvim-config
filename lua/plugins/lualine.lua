return {
  { -- Statusline
    'nvim-lualine/lualine.nvim',
    -- Optional dependencies
    dependencies = {
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = vim.g.have_nerd_font,
          theme = 'catppuccin-mocha',
        },
        sections = {
          lualine_b = { 'diagnostics' },
          lualine_c = {
            { 'filename', path = 1 },
          },
        },
        inactive_sections = {
          lualine_c = {
            { 'filename', path = 1 },
          },
        },
      }
    end,
  },
}
