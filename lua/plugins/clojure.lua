return {
  {
    'Olical/conjure',
    -- ft = { 'clojure', 'fennel', 'python' }, -- etc
    ft = { 'clojure', 'fennel' }, -- etc
    -- [Optional] cmp-conjure for cmp
    dependencies = {
      {
        'PaterJason/cmp-conjure',
        config = function()
          local cmp = require 'cmp'
          local config = cmp.get_config()
          table.insert(config.sources, {
            name = 'buffer',
            option = {
              sources = {
                { name = 'conjure' },
              },
            },
          })
          cmp.setup(config)
        end,
        enabled = false, -- change this to true to enable plugin
      },
    },
    config = function(_, opts)
      require('conjure.main').main()
      require('conjure.mapping')['on-filetype']()
    end,
    init = function()
      -- Set configuration options here
      vim.g['conjure#debug'] = true
    end,
  },
}
