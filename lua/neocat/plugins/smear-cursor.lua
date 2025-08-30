return {
    "sphamba/smear-cursor.nvim",
    config = function()
        local smear = require'smear_cursor'
        smear.setup {
            stifness = 0.8,
            trailing_stifness = 0.8,
            stifness_insert_mode = 0.9,
            trailing_stifness_insert_mode = 0.9,
            damping = 0.95,
            damping_insert_mode = 0.95,
            distance_stop_animating = 0.2,
            matrix_pixel_threshold = 0.3,
            time_interval = 7,
        }
    end
}
