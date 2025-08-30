return {
    "sphamba/smear-cursor.nvim",
    config = function()
        local smear = require'smear_cursor'
        smear.setup {
            stifness = 0.8,
            trailing_stifness = 0.95,
            stifness_insert_mode = 0.6,
            trailing_stifness_insert_mode = 0.5,
            damping = 0.2,
            damping_insert_mode = 0.95,
            distance_stop_animating = 0.5,
        }
    end
}
