-- floaterm.lua
return {
    {
        'voldikss/vim-floaterm',
        lazy = false,
        config = function()
            -- configurações dos atalhos
            vim.g.floaterm_keymap_new = '<Leader>1'
            vim.g.floaterm_keymap_toggle = '<Leader>2'

            -- key bindings para normal e terminal mode
            vim.api.nvim_set_keymap('n', '<Leader>1', ':FloatermNew<CR>', { noremap = true, silent = true, desc = "New Terminal" })
            vim.api.nvim_set_keymap('n', '<Leader>2', ':FloatermToggle<CR>', { noremap = true, silent = true, desc = "Toggle Terminal" })
            vim.api.nvim_set_keymap('n', '<Leader>3', ':FloatermKill<CR>', { noremap = true, silent = true, desc = "Kill Terminal" })
        end
    }
}
