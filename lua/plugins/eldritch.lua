if true then return {} end

return {
    {

        {
            "eldritch-theme/eldritch.nvim",
            lazy = false,
            priority = 1000,
            opts = {},
            config = function()
                -- Optionally configure and load the colorscheme
                -- directly inside the plugin declaration.
                
                vim.cmd.colorscheme('eldritch')
            end

            
          }


    }
}