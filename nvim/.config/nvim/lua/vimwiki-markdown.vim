
let g:wiki_config = { 'home': '~/Documents/Wiki', 'markdown_dir': 'sources', 'html_dir': 'docs','template_path': 'bootstrap','theme':'bootstrap' }

" Previewing browser
let g:wiki_preview_browser = 'firefox'
" Wheather to generate table of contents in html
let g:wiki_generate_toc = 1
" Automatically converting markdown to html when you save markdown file.
let g:wiki_auto_convert = 1

" open wiki home index
nnoremap <leader>ww :WikiHome<CR>
" create or follow a markdown link
nnoremap <leader>wn :WikiCreateFollowLink<CR>
" create or follow a subdirectory index link
nnoremap <leader>wN :WikiCreateFollowDirectory<CR>
" goto parent directory's index
nnoremap <leader>wp :WikiGotoParent<CR>
" delete current link
nnoremap <leader>wd :WikiDeleteLink<CR>
" rename current link
nnoremap <leader>wr :WikiRenameLink<CR>
" convert current markdown into html
nnoremap <leader>wh :Wiki2HTML<CR>
" convert all changed markdowns into htmls
nnoremap <leader>wH :WikiAll2HTML<CR>
" convert current markdown into html and browse html in browser
nnoremap <leader>wb :Wiki2HTMLBrowse<CR>
" open current markdown's corresponding html
nnoremap <leader>wo :WikiOpenHTML<CR>
" paste image in vimwiki's image directory and 
nnoremap <leader>wi :WikiPasteImage<CR>
