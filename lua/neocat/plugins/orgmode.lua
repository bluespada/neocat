return {
  { 
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    ft = { 'org' },
    config = function()
      -- Setup orgmode
      require('orgmode').setup({
        org_agenda_files = '~/.personal-notes/**/*',
        org_default_notes_file = '~/.personal-notes/refile.org',
      })

      -- setup org mode grammar
      -- Tree-sitter configuration
      require'nvim-treesitter.configs'.setup {
        highlight = {
          enable = true,
          disable = {'org'}, -- Remove this to use TS highlighter for some of the highlights (Experimental)
          additional_vim_regex_highlighting = {'org'}, -- Required since TS highlighter doesn't support all syntax features (conceal)
        },
        ensure_installed = {'org'}, -- Or run :TSUpdate org
      }

      require'org-bullets'.setup{
      }

      require'headlines'.setup{
      }

      -- other setup
      vim.cmd('language en_US.utf8')
      vim.opt.conceallevel = 2
      vim.opt.concealcursor = 'nc'

    end,
    dependencies = {
      { 'akinsho/org-bullets.nvim' },
      { 'lukas-reineke/headlines.nvim' }
    }
  }
}
