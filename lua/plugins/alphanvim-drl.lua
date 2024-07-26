--if true then return {} end
-- The Night Before DOOM, the rogue like (drl) theme.
return {

  {
    "goolord/alpha-nvim",
    dependencies = { "kyazdani42/nvim-web-devicons" },
    event = "VimEnter",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      math.randomseed(os.time())

      local function pick_color()
        local colors = { "String", "Identifier", "Keyword", "Number" }
        return colors[math.random(#colors)]
      end

      local function footer()
        local total_plugins = #vim.tbl_keys(require('lazy').plugins())
        local date = os.date(" %d-%m-%Y")
        local version = vim.version()
        local nvim_version_info = "  ⚡ Neovim Loaded.   Version " .. version.major .. "." .. version.minor .. "." .. version.patch
        local quote = "   memento mori"
        return {
          "        " .. date .. nvim_version_info .. "    " .. total_plugins .. " plugins" .. ". " .. quote ,
          "",
          "  “All whose names were not found written in the book of life were thrown into the lake of fire.”",
          "   (Revelation 20:15)",
          "",



        }
        
      end

      local logo = {
        "=============================================================================",
        "",  
        "                  ##           #           #               #",
        "                  ######     #####       #####    #       ##",
        "                  ######### ########   ######## ####    ####",
        "                  ### ##### ###  #### ####  ### #####  #####",
        "                  ###   ### ###   ### ###   ### ############",
        "                  ###   ### ###   ### ###   ### ### #### ###",
        "                  ###   ### ###   ### ###   ### ###  ##  ###",
        "                  ###   ### ###   ### ###   ### ###      ###",
        "                  ###  ###  #### #### #### #### ###      ###",
        "                  ### ###    ######     ######   ##      ###",
        "                  #####        ##         ##      #      ###",
        "                  ###                                    ###",
        "                  #         Doom, the Roguelike            #",
        "                              Version 0.9.9.7",
        "                     (c)        N E O V I M",
        "",  
        "=============================================================================",
      }
      

      dashboard.section.header.val = logo
      dashboard.section.header.opts.hl = pick_color()

      dashboard.section.buttons.val = {
        dashboard.button("e", "  > Explorer", ":ex .<CR>"),
        dashboard.button('r', '  > Recent files', ':Telescope oldfiles<CR>'),    
        dashboard.button("t", "  > Toggle Transparent", ":TransparentToggle<CR>"),
        dashboard.button("u", "  > Update plugins", ":Lazy update<CR>"),
        dashboard.button('s', '  > Settings', ':e $MYVIMRC | pwd<CR>'),
        dashboard.button("q", "  > Quit", ":qa<cr>"),
      }

      dashboard.section.footer.val = footer()
      dashboard.section.footer.opts.hl = "Constant"

      alpha.setup(dashboard.opts)

      vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end
  }
}


