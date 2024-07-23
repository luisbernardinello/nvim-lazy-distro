if true then return {} end


return {
    'goolord/alpha-nvim',
    config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'
      dashboard.section.header.val = {
        [[]],
        [[]],
        [[ ╭╮╭┬─╮╭─╮┬  ┬┬╭┬╮ ]],
        [[ │││├┤ │ │╰┐┌╯││││ ]],
        [[ ╯╰╯╰─╯╰─╯ ╰╯ ┴┴ ┴ ]]
    }
      -- Set menu
      dashboard.section.buttons.val = {
        dashboard.button('e', '  > New file', ':ene <BAR> startinsert <CR>'),
        dashboard.button('f', '󰈞  > Find file', ':Telescope find_files<CR>'),
        dashboard.button('r', '  > Recent', ':Telescope oldfiles<CR>'),    
        dashboard.button("o", "  > Oil Explorer", ":ex .<CR>"),
        dashboard.button("l", '󰒲  > Lazy Update', ':Lazy update<CR>'),
        dashboard.button('s', '  > Settings', ':e $MYVIMRC | pwd<CR>'),
        dashboard.button('q', '  > Quit NVIM', ':qa<CR>'),
      }
      dashboard.section.footer.val = 'Memento Mori'
  
      dashboard.config.opts.noautocmd = true
  
      -- Disable folding on alpha buffer
      vim.cmd [[
      autocmd FileType alpha setlocal nofoldenable
      ]]
  
      alpha.setup(dashboard.config)
    end,
  }