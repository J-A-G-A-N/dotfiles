return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require('lualine').setup({
      options = {
        theme = vim.g.colors_name, -- Dynamically set theme to the current colorscheme
      }
    })
  end
}

-- return{
--   "nvim-lualine/lualine.nvim",
--   config  = function()
--     require('lualine').setup({
--      options = {
--       }
-- 	  theme = vim.g.colors_name,
-- 	  })
--      end
--
--
-- }
