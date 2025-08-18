-- Copyright (c) 2025 bluespada Author	: bluespada <pentingmain@gmail.com>
-- License	: MIT

local neocat = require'neocat'

neocat.setup {
    termguicolors = true,
    init = function()
        -- NOTE : SET CMP COLOR
        -- Popup menu
    

        -- Selection and menu
        vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#6E5D56", fg = "NONE" }) -- selection
        vim.api.nvim_set_hl(0, "Pmenu", { fg = "#D9E0EE", bg = "#1E1E2E" }) -- menu

        -- Abbreviation styling
        vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = "#A6A7D2", bg = "NONE", strikethrough = true })
        vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#F5B7B1", bg = "NONE", bold = true })
        vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#F5B7B1", bg = "NONE", bold = true })
        vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = "#C9CBFF", bg = "NONE", italic = true })

        -- Custom kind (e.g. Codeium)
        vim.api.nvim_set_hl(0, "CmpItemKindCodeium", { bg = "#6E5D56", fg = "#D9E0EE", bold = true })

        -- Red group
        vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = "#F28FAD", bg = "#F2D2D0" })
        vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = "#F28FAD", bg = "#F2D2D0" })
        vim.api.nvim_set_hl(0, "CmpItemKindEvent", { fg = "#F28FAD", bg = "#F2D2D0" })

        -- Green group
        vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = "#A6D189", bg = "#2E2E3D" })
        vim.api.nvim_set_hl(0, "CmpItemKindEnum", { fg = "#A6D189", bg = "#2E2E3D" })
        vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = "#A6D189", bg = "#2E2E3D" })

        -- Orange group
        vim.api.nvim_set_hl(0, "CmpItemKindConstant", { fg = "#F2A07A", bg = "#6E5D56" })
        vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = "#F2A07A", bg = "#6E5D56" })
        vim.api.nvim_set_hl(0, "CmpItemKindReference", { fg = "#F2A07A", bg = "#6E5D56" })

        -- Blue (Primary) group
        vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = "#81A1C1", bg = "#2E2E3D" })
        vim.api.nvim_set_hl(0, "CmpItemKindStruct", { fg = "#81A1C1", bg = "#2E2E3D" })
        vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = "#81A1C1", bg = "#2E2E3D" })
        vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = "#81A1C1", bg = "#2E2E3D" })
        vim.api.nvim_set_hl(0, "CmpItemKindOperator", { fg = "#81A1C1", bg = "#2E2E3D" })

        -- Neutral
        vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = "#D9E0EE", bg = "#6E5D56" })
        vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = "#D9E0EE", bg = "#6E5D56" })

        -- Yellow group
        vim.api.nvim_set_hl(0, "CmpItemKindUnit", { fg = "#E0AF68", bg = "#4E4D5C" })
        vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = "#E0AF68", bg = "#4E4D5C" })
        vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = "#E0AF68", bg = "#4E4D5C" })

        -- Aqua/Teal group
        vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = "#88C0D0", bg = "#2E2E3D" })
        vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = "#88C0D0", bg = "#2E2E3D" })
        vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", { fg = "#88C0D0", bg = "#2E2E3D" })

        -- Cyan-ish group
        vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = "#8FBCBB", bg = "#6E5D56" })
        vim.api.nvim_set_hl(0, "CmpItemKindColor", { fg = "#8FBCBB", bg = "#6E5D56" })
        vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { fg = "#8FBCBB", bg = "#6E5D56" })


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

