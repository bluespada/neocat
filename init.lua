-- Copyright (c) 2025 bluespada Author	: bluespada <pentingmain@gmail.com>
-- License	: MIT

local neocat = require'neocat'

neocat.setup {
    init = function()
        -- NOTE : SET CMP COLOR
        vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#2D4F67", fg = "NONE" })
        vim.api.nvim_set_hl(0, "Pmenu", { fg = "#C8D3F5", bg = "#1F2944" })

        vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = "#6B7B94", bg = "NONE", strikethrough = true })
        vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#7E9CD8", bg = "NONE", bold = true })
        vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#7E9CD8", bg = "NONE", bold = true })
        vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = "#957FB8", bg = "NONE", italic = true })

        vim.api.nvim_set_hl(0, "CmpItemKindCodeium", { bg = "#3B4B5B", fg = "#D4D4D4", bold = true })

        vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = "#D4D4D4", bg = "#C34043" })
        vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = "#D4D4D4", bg = "#C34043" })
        vim.api.nvim_set_hl(0, "CmpItemKindEvent", { fg = "#D4D4D4", bg = "#C34043" })

        vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = "#98BB6C", bg = "#627A59" })
        vim.api.nvim_set_hl(0, "CmpItemKindEnum", { fg = "#98BB6C", bg = "#627A59" })
        vim.api.nvim_set_hl(0, "cmpItemKindKeyword", { fg = "#98BB6C", bg = "#627A59" })

        vim.api.nvim_set_hl(0, "CmpItemKindConstant", { fg = "#FF9E3B", bg = "#DDB079" })
        vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = "#FF9E3B", bg = "#DDB079" })
        vim.api.nvim_set_hl(0, "CmpItemKindReference", { fg = "#FF9E3B", bg = "#DDB079" })

        vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = "#C8D3F5", bg = "#7E9CD8" })
        vim.api.nvim_set_hl(0, "CmpItemKindStruct", { fg = "#C8D3F5", bg = "#7E9CD8" })
        vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = "#C8D3F5", bg = "#7E9CD8" })
        vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = "#C8D3F5", bg = "#7E9CD8" })
        vim.api.nvim_set_hl(0, "CmpItemKindOperator", { fg = "#C8D3F5", bg = "#7E9CD8" })

        vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = "#DCD7BA", bg = "#363646" })
        vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = "#DCD7BA", bg = "#363646" })

        vim.api.nvim_set_hl(0, "CmpItemKindUnit", { fg = "#FFC48C", bg = "#8C6057" })
        vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = "#FFC48C", bg = "#8C6057" })
        vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = "#FFC48C", bg = "#8C6057" })

        vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = "#A3D4D5", bg = "#506D8B" })
        vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = "#A3D4D5", bg = "#506D8B" })
        vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", { fg = "#A3D4D5", bg = "#506D8B" })

        vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = "#8FC6D4", bg = "#3C5369" })
        vim.api.nvim_set_hl(0, "CmpItemKindColor", { fg = "#8FC6D4", bg = "#3C5369" })
        vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { fg = "#8FC6D4", bg = "#3C5369" })
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

