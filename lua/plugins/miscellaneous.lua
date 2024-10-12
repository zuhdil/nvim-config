return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', event = 'VimEnter', opts = {} },

  { 'lambdalisue/vim-suda', cmd = { 'SudaRead', 'SudaWrite' } },
}
