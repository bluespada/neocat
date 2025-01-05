-- This file is core of neocat
-- Don't touch any of these file if you don't understand what are you doing
local M = {}
local lazy = require'neocat.core.lazy'

function M.setup(cfg)
    -- check and install lazy
    lazy.check_and_install()
    -- setup configuration
    require'neocat.core.config'.init(cfg)
    require'neocat.keybind'.bind(cfg)
end

return M
