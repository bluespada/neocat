return {
    -- Interface 
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000 ,
        config = function()
            local gruvbox = require'gruvbox'

            gruvbox.setup {
                transparent_mode = true,
                contrast = "soft",
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
