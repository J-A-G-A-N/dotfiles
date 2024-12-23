function get_visual_selection()
    -- Get the start and end positions of the visual selection
    local start_pos = vim.fn.getpos("'<")
    local end_pos = vim.fn.getpos("'>")
    
    -- Get the start and end line numbers
    local start_line = start_pos[2]
    local end_line = end_pos[2]
    
    -- Get all the lines in the selection
    local lines = vim.api.nvim_buf_get_lines(0, start_line - 1, end_line, false)
    
    -- Handle the case where only part of the first/last line is selected
    local start_col = start_pos[3]
    local end_col = end_pos[3]
    
    -- If we have only one line, trim it according to selection
    if #lines == 1 then
        lines[1] = string.sub(lines[1], start_col, end_col)
    else
        -- Trim the first and last lines
        lines[1] = string.sub(lines[1], start_col)
        lines[#lines] = string.sub(lines[#lines], 1, end_col)
    end
    
    return lines
end
