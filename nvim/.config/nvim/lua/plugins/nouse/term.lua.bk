return {
  "NvChad/nvterm",
  config = function ()
    require("nvterm").setup({})
    vim.api.nvim_set_keymap('n', '<leader>f', [[<cmd>lua require("nvterm.terminal").toggle "float"<CR>]], { noremap = true, silent = true })

    -- Toggle horizontal split
    vim.api.nvim_set_keymap('n', '<leader>h', [[<cmd>lua require("nvterm.terminal").toggle "horizontal"<CR>]], { noremap = true, silent = true })

    -- Toggle vertical split
    vim.api.nvim_set_keymap('n', '<leader>v', [[<cmd>lua require("nvterm.terminal").toggle "vertical"<CR>]], { noremap = true, silent = true })
    vim.api.nvim_set_keymap('t', '<C-x>', '<C-\\><C-n>',{})
  end,


}

