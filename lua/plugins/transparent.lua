return {
    -- transparent
    {
        "xiyaowong/transparent.nvim",
        lazy = false,
        config = function()
            require("transparent").setup({
                groups = {
                    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
                    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
                    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
                    'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
                    'EndOfBuffer',
                },
                extra_groups = {}, -- additional groups that should be cleared
                exclude_groups = {}, -- groups you don't want to clear
            })
        end,
        cmd = {
            "TransparentEnable",
            "TransparentDisable",
            "TransparentToggle",
        },
    },

    {
        "mg979/vim-visual-multi",
        event = "VeryLazy"
    }
}
