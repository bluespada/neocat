-- Copyright (c) 2025 bluespada Author	: bluespada <pentingmain@gmail.com>
-- License	: MIT

local neocat = require'neocat'

neocat.setup {
    init = function()
        -- NOTE : SET CMP COLOR
        -- Menu selection
        vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#3c3836", fg = "NONE" })
        vim.api.nvim_set_hl(0, "Pmenu", { fg = "#ebdbb2", bg = "#282828" })

        -- Cmp abbreviation styling
        vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = "#928374", bg = "NONE", strikethrough = true })
        vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#b8bb26", bg = "NONE", bold = true })
        vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#b8bb26", bg = "NONE", bold = true })
        vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = "#d3869b", bg = "NONE", italic = true })

        -- Custom kind (example: Codeium)
        vim.api.nvim_set_hl(0, "CmpItemKindCodeium", { bg = "#504945", fg = "#ebdbb2", bold = true })

        -- Red group
        vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = "#fbf1c7", bg = "#cc241d" })
        vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = "#fbf1c7", bg = "#cc241d" })
        vim.api.nvim_set_hl(0, "CmpItemKindEvent", { fg = "#fbf1c7", bg = "#cc241d" })

        -- Green group
        vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = "#b8bb26", bg = "#3c3836" })
        vim.api.nvim_set_hl(0, "CmpItemKindEnum", { fg = "#b8bb26", bg = "#3c3836" })
        vim.api.nvim_set_hl(0, "cmpItemKindKeyword", { fg = "#b8bb26", bg = "#3c3836" })

        -- Orange/Yellow group
        vim.api.nvim_set_hl(0, "CmpItemKindConstant", { fg = "#fe8019", bg = "#d79921" })
        vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = "#fe8019", bg = "#d79921" })
        vim.api.nvim_set_hl(0, "CmpItemKindReference", { fg = "#fe8019", bg = "#d79921" })

        -- Blue-ish group
        vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = "#83a598", bg = "#458588" })
        vim.api.nvim_set_hl(0, "CmpItemKindStruct", { fg = "#83a598", bg = "#458588" })
        vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = "#83a598", bg = "#458588" })
        vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = "#83a598", bg = "#458588" })
        vim.api.nvim_set_hl(0, "CmpItemKindOperator", { fg = "#83a598", bg = "#458588" })

        -- Neutral group
        vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = "#ebdbb2", bg = "#3c3836" })
        vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = "#ebdbb2", bg = "#3c3836" })

        -- Yellow-brown group
        vim.api.nvim_set_hl(0, "CmpItemKindUnit", { fg = "#fabd2f", bg = "#7c6f64" })
        vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = "#fabd2f", bg = "#7c6f64" })
        vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = "#fabd2f", bg = "#7c6f64" })

        -- Aqua group
        vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = "#8ec07c", bg = "#3c443c" })
        vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = "#8ec07c", bg = "#3c443c" })
        vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", { fg = "#8ec07c", bg = "#3c443c" })

        -- Cyan group
        vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = "#689d6a", bg = "#3c3836" })
        vim.api.nvim_set_hl(0, "CmpItemKindColor", { fg = "#689d6a", bg = "#3c3836" })
        vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { fg = "#689d6a", bg = "#3c3836" })

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

