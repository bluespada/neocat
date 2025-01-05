local lazy = {}
local fn = vim.fn
local cmd = vim.api.nvim_command
local global_path = fn.stdpath("data") .. "/lazy/lazy.nvim"

-- function to check and install
function lazy.check_and_install()
    if fn.empty(fn.glob(global_path)) > 0 then
        -- do installation
        local lazy_repo = "https://github.com/folke/lazy.nvim.git"
        lazy.bootstrap =  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazy_repo, global_path })
        if vim.v.shell_error ~= 0 then
            vim.api.nvim_echo({
                { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
                { lazy.bootstrap, "WarningMsg" },
                { "\nPress any key to exit..." },
            }, true, {})
            vim.fn.getchar()
            os.exit(1)
        end
    end
    vim.opt.rtp:prepend(global_path)
    require'lazy'.setup{
        spec = {
            { import = "neocat.plugins" },
            { import = "plugins" }
        },
        checker = { enabled = true },
        install = {
            missing = true,
            colorscheme = { "kanagawa" }
        }
    }
end

return lazy
