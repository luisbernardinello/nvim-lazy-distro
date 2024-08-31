
return {
    {
      'mrcjkb/rustaceanvim',
      -- make sure to install rust-analyzer with '$ rustup component add rust-analyzer'
      version = '^5', -- Recommended
      lazy = false, -- This plugin is already lazy
      ft = { 'rust' },
      cmd = {},
      server = {
        -- Make it possible to change settings per project
        ---@param project_root string Path to the project root
        settings = function(project_root)
          local ra = require 'rustaceanvim.config.server'
          return ra.load_rust_analyzer_settings(project_root, {
            settings_file_pattern = 'rust-analyzer.json',
          })
        end,
        default_settings = {
          -- rust-analyzer language server configuration
          ['rust-analyzer'] = {},
        },
      },
    },
  }