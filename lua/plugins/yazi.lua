return {
    -- A Neovim Plugin for the yazi terminal file browser.
    -- SEE: https://github.com/mikavilpas/yazi.nvim
    'mikavilpas/yazi.nvim',

    event = 'VeryLazy',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },

    config = function()
        local plugin = require 'yazi'

        local keymap = vim.keymap.set

        local search_cwd = function()
            plugin.yazi(nil, vim.fn.getcwd())
        end

        local search_parent = function()
            local bufnr = vim.api.nvim_get_current_buf()
            local bufname = vim.api.nvim_buf_get_name(bufnr)
            local bufdir = vim.fn.fnamemodify(bufname, ':p:h')

            if bufdir == '' then
                bufdir = vim.fn.getcwd()
            end

            plugin.yazi(nil, bufname)
        end

        keymap('n', '<leader>8', search_parent, { desc = 'Open the file [E]xplorer in parent directory.' })

        keymap('n', '<leader>9', search_cwd, { desc = 'Open the file [E]xplorer in cwd.' })

        plugin.setup {
            open_for_directories = false,
            floating_window_scaling_factor = 1,
            yazi_floating_window_winblend = 0,
            yazi_floating_window_border = 'none',
        }
    end,
}