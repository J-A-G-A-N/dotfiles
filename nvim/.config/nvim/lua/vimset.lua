--vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
--vim.cmd("set spell")
vim.g.mapleader = " "
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.opt.autoindent=true
vim.opt.termguicolors = false
vim.keymap.set('n','<leader>ch',':nohl<cr>')
vim.keymap.set('n','<leader>c',':close<cr>')
vim.keymap.set("n", "<c-t>", ":tabnew<cr>") -- open new tab
vim.keymap.set("n", "<c-x>", ":tabclose<cr>") -- close current tab
vim.keymap.set("n", "<c-n>", ":tabn<cr>") --  go to next tab
vim.keymap.set("n", "<c-u>", ":tabp<cr>") --  go to previous tab
vim.keymap.set("n","<leader>nh", ":nohl<cr>",{desc = "clear search highlights"})
vim.keymap.set("n","<leader>c",":Telescope colorscheme<CR>")
-- copy the selected text to the system clipboard in visual mode
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })

-- copy the current line to the system clipboard in normal modevim.api.nvim_set_keymap('n', '<leader>y', '"+yy', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>u', '"+yy', { noremap = true, silent = false })
-- copy the selected text to the system clipboard in visual mode and then delete it
vim.api.nvim_set_keymap('v', '<leader>l', '"+d', { noremap = true, silent = true })



-- Define a function to prompt for a shell command and execute it
function ExecuteShellCommand()
    -- Prompt the user for a shell command
    local input = vim.fn.input('Enter shell command: ')
    -- Execute the shell command
    vim.api.nvim_command('! ' .. input)
end

-- Map <Shift>t to the ExecuteShellCommand function in normal mode
vim.api.nvim_set_keymap('n', '<S-t>', ':lua ExecuteShellCommand()<CR>', { noremap = true, silent = true })

-- split 
vim.keymap.set("n", "<S-v>", ":vsplit<cr>")
vim.keymap.set("n", "<S-h>", ":split<cr>")


-- Vimtex Configuration
vim.g.vimtex_compiler_method = 'latexmk'  -- Use latexmk for compilation
vim.g.vimtex_compiler_latexmk = {
    options = {
        '-silent', 
        '-interaction=nonstopmode', 
        '-pdf', 
        '-latexoption=-output-directory=.', -- Output PDF in the current directory
        '-latexoption=-file-line-error', -- Avoid creating extra files
    },
    clean = 1,  -- Automatically clean auxiliary files after compilation
}





-- Set up vimwiki

vim.g.vimwiki_list = {{
	path = '~/Documents/vimwiki',
	syntax = 'default',
	ext = '.wiki'
}}
