return {
		{ {
				'nvim-telescope/telescope.nvim',
				tag = '0.1.6',
				dependencies = { 'nvim-lua/plenary.nvim' },

				config = function()
					local builtin = require("telescope.builtin")

					vim.keymap.set('n', '<C-p>', builtin.find_files, {})
					vim.keymap.set('n', '<leader>p', builtin.live_grep, {})

					-- Key mapping to open another file in a vertical split screen using Telescope
					vim.api.nvim_set_keymap('n', '<leader>o',
						'<cmd>lua require("telescope.builtin").find_files({ layout_strategy = "vertical" })<CR>',
						{ noremap = true, silent = true })
				end
			},
			{
				"nvim-telescope/telescope-ui-select.nvim",
				config = function()
					require("telescope").setup({
						extensions = {
							["ui-select"] = {
								require("telescope.themes").get_dropdown {
								}
							}
						}
					})
					require("telescope").load_extension("ui-select")
				end
			},
		},
		{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    } , 
  config = function() 
        vim.keymap.set('n', '<C-o>',':Neotree filesystem toggle<CR>',{}		)
  end 
	}
}
