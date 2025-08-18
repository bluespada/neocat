return {
    -- Interface 
    {
        "catppuccin/nvim", name = "catppuccin", priority = 1000,
        config = function()
            require'catppuccin'.setup{
                flavour = "macchiato",
                transparent_background = true,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    treesitter = true
                }
            }
            vim.cmd.colorscheme "catppuccin"
        end
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
