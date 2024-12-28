return{
	{
		'zdszero/vimwiki-markdown',
	},
	{
	'MeanderingProgrammer/render-markdown.nvim'	,
		config = function ()
		local markdown =  require("render-markdown")
		markdown.setup({
			render_modes = {'n','c','t'}
		})
	end
	},
	{
		'iamcco/markdown-preview.nvim',
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
			
	},
}
