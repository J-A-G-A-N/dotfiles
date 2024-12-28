return{
    "rcarriga/nvim-notify",
    config = function()
        require("notify").setup({
            -- Customize as needed
            stages = "fade_in_slide_out",  -- Animation style
            timeout = 2000,               -- Notification timeout in milliseconds
            background_colour = "#000000" -- Background color
        })
        vim.notify = require("notify")    -- Set notify as the default notification handler
    end,
}

