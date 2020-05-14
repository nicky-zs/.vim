set nocompatible                  " be iMproved, required
filetype off                      " required
set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'     " let Vundle manage Vundle, required
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'fatih/vim-go'
Plugin 'preservim/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
call vundle#end()                 " required, Plugins must be added before this line

filetype plugin indent on         " required

syntax enable on

set enc=utf-8 fencs=ucs-bom,utf8,latin1
set ts=4 sw=4 sts=4 so=2
set nu ru ai ci hls cul
set backspace=indent,eol,start
set mouse=a

hi Search ctermfg=Black ctermbg=White
hi CursorLine cterm=NONE ctermbg=235
hi CursorLineNr cterm=NONE ctermbg=235

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" vim-go
let g:go_gopls_enabled = 0
let g:go_code_completion_enabled = 0
let g:go_gopls_enabled = 0
let g:go_template_autocreate = 0
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1

" tagbar
nnoremap <F12> :TagbarToggle<CR>
let g:tagbar_iconchars = ['+', '-']
autocmd FileType tagbar nnoremap <buffer> <leader>r <nop>

" nerdtree
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <leader>r :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeIgnore = ['\.pyc$', '\.o$', '\.so$', '\.class$', '\.swp$']
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd FileType nerdtree nnoremap <buffer> <leader>r <nop>

" ycm
nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>t :YcmCompleter GetType<CR>
nnoremap <leader>f :YcmCompleter GoToReferences<CR>
nmap <leader>d <plug>(YCMHover)
set completeopt-=preview
set ttimeoutlen=0
let g:ycm_semantic_triggers = {}
let g:ycm_show_diagnostics_ui = 0
let g:ycm_auto_trigger = 0
let g:ycm_key_invoke_completion = '<C-a>'
let g:ycm_key_list_stop_completion = ['<CR>']
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>', '<Tab>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_filetype_whitelist = {'c':1,'cpp':1,'python':1,'go':1,'sh':1,'lua':1}
let g:ycm_max_num_candidates = 100
let g:ycm_auto_hover = ''

