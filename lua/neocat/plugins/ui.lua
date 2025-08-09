return {
    -- Interface 
        {
            "olimorris/onedarkpro.nvim",
            priority = 1000,
            config = function()
                local onedark = require'onedarkpro'
                vim.cmd("set termguicolors")
                vim.cmd("colorscheme onedark_vivid")
            end
        },
    -- {
    --     "ellisonleao/gruvbox.nvim",
    --     priority = 1000,
    --     config = function()
    --         local gruvbox = require'gruvbox'

    --         gruvbox.setup {
    --             contrast = "hard",
    --         }

    --         vim.cmd([[colorscheme gruvbox]])
    --     end
    -- },
--    { 
--        'rebelot/kanagawa.nvim',
--        lazy = false,
--        priority = 1000,
--        config = function()
--            local kanagawa = require'kanagawa'
--            kanagawa.setup {
--                undercurl = true,
--                transparent = false,
--                gutter = false,
--                dimInactive = true, -- disabled when transparent
--                terminalColors = true,
--                commentStyle = { italic = true },
--                functionStyle = { italic = true, bold = true },
--                keywordStyle = { italic = true, bold = true },
--                statementStyle = { italic = true, bold = true },
--                typeStyle = { italic = false },
--                theme = "dragon",
--            }
--            vim.cmd([[colorscheme kanagawa]])
--        end
--    }, -- default theme will be catpuccin for all necovim themes
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
