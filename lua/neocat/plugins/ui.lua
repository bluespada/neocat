return {
    -- Interface 
    { 
        'rebelot/kanagawa.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            local kanagawa = require'kanagawa'
            kanagawa.setup {
                undercurl = true,
                transparent = false,
                gutter = false,
                dimInactive = true, -- disabled when transparent
                terminalColors = true,
                commentStyle = { italic = true },
                functionStyle = { italic = true, bold = true },
                keywordStyle = { italic = true, bold = true },
                statementStyle = { italic = true, bold = true },
                typeStyle = { italic = false },
                theme = "dragon",
            }
            vim.cmd([[colorscheme kanagawa]])
        end
    }, -- default theme will be catpuccin for all necovim themes
    { 'DaikyXendo/nvim-material-icon' }, -- icons
    { 'norcalli/nvim-colorizer.lua' }, -- colorizer
    { 'nvimdev/dashboard-nvim' },
    { 'hoob3rt/lualine.nvim' },
    { 'akinsho/bufferline.nvim' },
    { 'HiPhish/rainbow-delimiters.nvim' }, -- rainbow delimiters
    { 'lukas-reineke/indent-blankline.nvim' }, -- indentline
    { 
        'xiyaowong/transparent.nvim',
        config=function()
            require'transparent'.setup{}
            -- enable transparent
            -- vim.cmd([[autocmd BufEnter * ++once lua require("transparent").TransparentEnable]])
        end

    },
}
