if true then return {} end

return {
    {
        {
            "ellisonleao/gruvbox.nvim",
            lazy = false,
            config = true,
            priority = 1000,
            config = function()
              -- Optionally configure and load the colorscheme
              -- directly inside the plugin declaration.
              vim.g.gruvbox_enable_italic = true
              vim.cmd.colorscheme('gruvbox')
            end
          }
    }
}
