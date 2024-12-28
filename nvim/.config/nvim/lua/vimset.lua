--vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
--vim.cmd("set spell")
vim.g.mapleader = " "
vim.g.browser = 'firefox'
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
vim.keymap.set("n","<leader>c",":telescope colorscheme<cr>")
-- copy the selected text to the system clipboard in visual mode
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })

-- copy the current line to the system clipboard in normal modevim.api.nvim_set_keymap('n', '<leader>y', '"+yy', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>u', '"+yy', { noremap = true, silent = false })
-- copy the selected text to the system clipboard in visual mode and then delete it
vim.api.nvim_set_keymap('v', '<leader>l', '"+d', { noremap = true, silent = true })



-- define a function to prompt for a shell command and execute it
function executeshellcommand()
    -- prompt the user for a shell command
    local input = vim.fn.input('enter shell command: ')
    -- execute the shell command
    vim.api.nvim_command('! ' .. input)
end

-- map <shift>t to the executeshellcommand function in normal mode
vim.api.nvim_set_keymap('n', '<s-t>', ':lua executeshellcommand()<cr>', { noremap = true, silent = true })

-- split 
vim.keymap.set("n", "<s-v>", ":vsplit<cr>")
vim.keymap.set("n", "<s-h>", ":split<cr>")


-- vimtex configuration
vim.g.vimtex_compiler_method = 'latexmk'  -- use latexmk for compilation
vim.g.vimtex_compiler_latexmk = {
    options = {
        '-silent', 
        '-interaction=nonstopmode', 
        '-pdf', 
        '-latexoption=-output-directory=.', -- output pdf in the current directory
        '-latexoption=-file-line-error', -- avoid creating extra files
    },
    clean = 1,  -- automatically clean auxiliary files after compilation
}


vim.g.vimwiki_list = {{path =  '~/documents/vimwiki/wiki/',  syntax = 'markdown', ext = '.md'}}


-- open wiki home index
vim.keymap.set("n", "<leader>ww", ":wikihome<cr>")

-- create or follow a markdown link
vim.keymap.set("n", "<leader>wn", ":wikicreatefollowlink<cr>")

-- create or follow a subdirectory index link
vim.keymap.set("n", "<leader>wn", ":wikicreatefollowdirectory<cr>")

-- go to parent directory's index
vim.keymap.set("n", "<leader>wp", ":wikigotoparent<cr>")

-- delete current link
vim.keymap.set("n", "<leader>wd", ":wikideletelink<cr>")

-- rename current link
vim.keymap.set("n", "<leader>wr", ":wikirenamelink<cr>")

-- convert current markdown into html
vim.keymap.set("n", "<leader>wh", ":wiki2html<cr>")

-- convert all changed markdowns into htmls
vim.keymap.set("n", "<leader>wh", ":wikiall2html<cr>")

-- convert current markdown into html and browse html in browser
vim.keymap.set("n", "<leader>wb", ":wiki2htmlbrowse<cr>")

-- open current markdown's corresponding html
vim.keymap.set("n", "<leader>wo", ":wikiopenhtml<cr>")

-- paste image in vimwiki's image directory
vim.keymap.set("n", "<leader>wi", ":wikipasteimage<cr>")


