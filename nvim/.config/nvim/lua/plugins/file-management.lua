return {
		{ {
				'nvim-telescope/telescope.nvim',
				tag = '0.1.6',
				dependencies = { 'nvim-lua/plenary.nvim' },

				config = function()
					local builtin = require("telescope.builtin")

					vim.keymap.set('n', '<C-p>', builtin.find_files, {})
					vim.keymap.set('n', '<leader>p', builtin.live_grep, {})
					vim.keymap.set('n', '<leader>h', builtin.help_tags,{})

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
				--	require("telescope").load_extension('harpoon')
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
	},
	{
			"ThePrimeagen/harpoon",
			branch = "harpoon2",
			-- config = function ()
			-- 	vim.keymap.set('n','<C-a>',':lua require("harpoon.mark").add_file()<CR>',{})
			-- 	vim.keymap.set('n','<C-h>',':lua require("harpoon.ui").toggle_quick_menu()<CR>',{})
			-- 	vim.keymap.set('n','<C-n>',':lua require("harpoon.ui").nav_next()<CR>  ',{})
			-- 	vim.keymap.set('n','<C-b>',':lua require("harpoon.ui").nav_prev()<CR>  ',{})
			-- end
			-- ,


	}
}
