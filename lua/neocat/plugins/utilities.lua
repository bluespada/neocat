return { -- Utilities 
    { 
        'nvim-tree/nvim-tree.lua',
    }, -- file tree
    { 
        'nvim-lua/plenary.nvim'
    }, -- async utilities
    { 
        'nvim-telescope/telescope.nvim',
    }, -- telescope
    { 
        'windwp/nvim-autopairs',
        config = function()
            require'nvim-autopairs'.setup{
                enable_check_bracket_line = true
            }
            local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
            local cmp = require('cmp')
            cmp.event:on(
            'confirm_done',
            cmp_autopairs.on_confirm_done()
            )
        end
    }, -- autopairs
    { 
        'windwp/nvim-ts-autotag',
        config = function()
            require'nvim-ts-autotag'.setup{
                opts = {
                    enable_close = true,
                    enable_rename = true,
                    enable_close_on_slash = true
                },
                per_filetype = {
                    ["xml"] = {
                        enable_close = true,
                    },
                    ["html"] = {
                        enable_close = true,
                    },
                    ["htmlx"] = {
                        enable_close = true,
                    },
                    ["jsx"] = {
                        enable_close = true,
                    },
                    ["tsx"] = {
                        enable_close = true,
                    },
                },
            }
        end
    }, -- ts autoclosetags

}
