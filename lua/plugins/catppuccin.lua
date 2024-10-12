return {
  { -- Colorscheme.
    'catppuccin/nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Available flavours:
      --  'catppuccin', 'catppuccin-latte', 'catppuccin-frappe', 'catppuccin-macchiato', 'catppuccin-mocha'.
      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },
}
