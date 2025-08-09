-- Copyright (c) 2025 bluespada Author	: bluespada <pentingmain@gmail.com>
-- License	: MIT

local neocat = require'neocat'

neocat.setup {
    termguicolor = true,
    init = function()
        -- NOTE : SET CMP COLOR
        -- Popup menu
        vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#3e4452", fg = "NONE" }) -- selection
        vim.api.nvim_set_hl(0, "Pmenu", { fg = "#abb2bf", bg = "#21252b" }) -- menu

        -- Abbreviation styling
        vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = "#5c6370", bg = "NONE", strikethrough = true })
        vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#61afef", bg = "NONE", bold = true })
        vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#61afef", bg = "NONE", bold = true })
        vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = "#c678dd", bg = "NONE", italic = true })

        -- Custom kind (e.g. Codeium)
        vim.api.nvim_set_hl(0, "CmpItemKindCodeium", { bg = "#3e4452", fg = "#abb2bf", bold = true })

        -- Red group
        vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = "#ffffff", bg = "#e06c75" })
        vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = "#ffffff", bg = "#e06c75" })
        vim.api.nvim_set_hl(0, "CmpItemKindEvent", { fg = "#ffffff", bg = "#e06c75" })

        -- Green group
        vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = "#98c379", bg = "#2c313a" })
        vim.api.nvim_set_hl(0, "CmpItemKindEnum", { fg = "#98c379", bg = "#2c313a" })
        vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = "#98c379", bg = "#2c313a" })

        -- Orange group
        vim.api.nvim_set_hl(0, "CmpItemKindConstant", { fg = "#d19a66", bg = "#3e4452" })
        vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = "#d19a66", bg = "#3e4452" })
        vim.api.nvim_set_hl(0, "CmpItemKindReference", { fg = "#d19a66", bg = "#3e4452" })

        -- Blue (Primary) group
        vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = "#61afef", bg = "#2c313c" })
        vim.api.nvim_set_hl(0, "CmpItemKindStruct", { fg = "#61afef", bg = "#2c313c" })
        vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = "#61afef", bg = "#2c313c" })
        vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = "#61afef", bg = "#2c313c" })
        vim.api.nvim_set_hl(0, "CmpItemKindOperator", { fg = "#61afef", bg = "#2c313c" })

        -- Neutral
        vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = "#abb2bf", bg = "#3e4452" })
        vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = "#abb2bf", bg = "#3e4452" })

        -- Yellow group
        vim.api.nvim_set_hl(0, "CmpItemKindUnit", { fg = "#e5c07b", bg = "#4b4f58" })
        vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = "#e5c07b", bg = "#4b4f58" })
        vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = "#e5c07b", bg = "#4b4f58" })

        -- Aqua/Teal group
        vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = "#56b6c2", bg = "#2c313a" })
        vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = "#56b6c2", bg = "#2c313a" })
        vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", { fg = "#56b6c2", bg = "#2c313a" })

        -- Cyan-ish group
        vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = "#56b6c2", bg = "#3e4452" })
        vim.api.nvim_set_hl(0, "CmpItemKindColor", { fg = "#56b6c2", bg = "#3e4452" })
        vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { fg = "#56b6c2", bg = "#3e4452" })

        local project_ftplugin = vim.fn.getcwd() .. '/.nvim/after/ftplugin'
        if vim.fn.isdirectory(project_ftplugin) == 1 then
            vim.opt.runtimepath:prepend(project_ftplugin)
        end


    end,
    bind = function(map)
        -- nerd Tree shortcut
        map('n', '<leader>nt', ':NvimTreeToggle<CR>', { silent = true, noremap = true })
        map('n', '<leader>nf', ':NvimTreeFocus<CR>', { silent = true, noremap = true })
        map('n', '<leader>nc', ':NvimTreeClose<CR>', { silent = true, noremap = true })
        map('n', '<leader>nr', ':NvimTreeRefresh<CR>', { silent = true, noremap = true })
        -- packer shortcuts
        map('n', '<leader>pi', ':PackerInstall<CR>', { silent = true, noremap = true })
        map('n', '<leader>pc', ':PackerClean<CR>', { silent = true, noremap = true })
        -- dashboard keymaps
        map('n', '<leader>d', ':Dashboard<CR>', { silent = true, noremap = true })
        map('n', '<leader>df', ':Telescope find_files<CR>', { silent = true, noremap = true })
        map('n', '<leader>dc', ':lua DashboardNvimConfig()<CR>', { silent = true, noremap = true })
        map('n', '<leader>dw', ':Telescope live_grep<CR>', { silent = true, noremap = true })
        map('n', '<leader>dl', ':lua LoadSession()<CR>', { silent = true, noremap = true })
        map('n', '<leader>dn', ':enew<CR>', { silent = true, noremap = true })
        map('n', '<C-c>', ':bd<CR>', { silent = true, noremap = true })
        -- telescope keybind
        map('n', '<leader>ff', ':Telescope find_files<CR>', { silent = true, noremap = true })
        map('n', '<leader>fg', ':Telescope live_grep<CR>', { silent = true, noremap = true })
        map('n', '<leader>fb', ':Telescope buffers<CR>', { silent = true, noremap = true })
        map('n', '<leader>fh', ':Telescope hep_tags<CR>', { silent = true, noremap = true })
        -- save shortcuts
        map('n', '<leader>ss', ':w!<CR>', { silent = true, noremap = true })
        -- buffer move
        map('n', '<C-S-Right>', ':BufferLineMoveNext<CR>', { silent = true, noremap = true })
        map('n', '<C-S-Left>', ':BufferLineMovePrev<CR>', { silent = true, noremap = true })
        map('n', '<A-l>', ':bnext<CR>', { silent = true, noremap = true })
        map('n', '<A-h>', ':bprevious<CR>', { silent = true, noremap = true })
        -- minimap toggle
        map('n', '<leader>tm', ':MinimapToggle<CR>', { silent = true, noremap = true })
        -- Inrement/Decrement
        map('n', '<C-a>', ':-<CR>', { silent = true, noremap = true })
        map('n', '<C-x>', ':+<CR>', { silent = true, noremap = true })
        -- codeactions
        map('n', 'cf', ':Lspsaga finder<CR>', { silent = true, noremap = true })
        map('n', 'ca', ':Lspsaga code_action<CR>', { silent = true, noremap = true })
        map('n', 'cd', ':Lspsaga hover_doc<CR>', { silent = true, noremap = true })
        map('n', 'cs', ':Lspsaga show_line_diagnostics<CR>', { silent = true, noremap = true })
        map('n', 'cz', ':Lspsaga peek_definition<CR>', { silent = true, noremap = true })
        map('n', 'cg', ':Lspsaga goto_definition<CR>', { silent = true, noremap = true })
        map('n', '<leader>dr', ':Ranger<CR>', { silent = true, noremap = true })
        -- calendar
        map('n', '<leader>cal', ':Calendar<CR>', { silent = true, noremap = true })
        -- Trouble
        map('n', '<leader>tt', ':TroubleToggle<CR>', { silent = true, noremap = true })
        map('n', '<leader>tr', ':TroubleRefresh<CR>', { silent = true, noremap = true })
        map('n', '<leader>tc', ':TroubleClose<CR>', { silent = true, noremap = true })
        -- Github
        map('n', '<leader>gdd', ':Git add .<CR>', { silent = true, noremap = true })
        map('n', '<leader>gdc', ':Git commit<CR>', { silent = true, noremap = true })
        -- ToggleTerm
        map('n', '<leader>;', ':ToggleTerm <CR>', { silent = true, noremap = true })
        -- Tagbar
        map('n', '<leader>tb', ':TagbarToggle <CR>', { silent = true, noremap = true })
        -- neogen
        map("n", "<leader>ng", ":lua require('neogen').generate()<CR>", { silent = true, noremap = true })
    end
}

