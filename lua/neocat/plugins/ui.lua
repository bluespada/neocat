return {
    -- ui utils
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        config = function()
            local snack = require'snacks'
            snack.setup {
                bigfile = { enabled = true },
                dashboard = { enabled = false },
                explorer = { enabled = false },
                indent = { enabled = true },
                input = { enabled = true },
                picker = { enabled = true },
                notifier = { enabled = true },
                quickfile = { enabled = true },
                scope = { enabled = true },
                scroll = { enabled = true },
                statuscolumn = { enabled = true },
                words = { enabled = true },
            }
        end
    },
    -- Interface 
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000 ,
        config = function()
            local gruvbox = require'gruvbox'
            gruvbox.setup {
                transparent_mode = true,
                contrast = "hard",
            }
            vim.cmd("colorscheme gruvbox")
        end,
        opts = ...
    },
    { 'DaikyXendo/nvim-material-icon' }, -- icons
    { 
        'norcalli/nvim-colorizer.lua',
        config = function()
            require'colorizer'.setup{}
        end
    }, -- colorizer
    { 
        'xiyaowong/transparent.nvim',
        config=function()
            require'transparent'.setup{}
            -- enable transparent
            -- vim.cmd([[autocmd BufEnter * ++once lua require("transparent").TransparentEnable]])
        end

    },
}
