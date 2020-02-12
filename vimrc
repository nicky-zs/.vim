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

set enc=utf-8 fenc=utf-8 fencs=ucs-bom,utf8,latin1
set ts=4 sw=4 sts=4 so=4
set nu ru ai ci hls cul
set backspace=indent,eol,start

hi Search ctermfg=Black ctermbg=White
hi CursorLine cterm=NONE ctermbg=234
hi CursorLineNr cterm=NONE ctermbg=234

" vim-go
let g:go_template_autocreate = 0
let g:go_gopls_enabled = 0
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

" nerdtree
nnoremap <F11> :NERDTreeToggle<CR>
nnoremap <leader>r :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable = '◢'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ycm
nnoremap <leader>g :YcmCompleter GoTo<CR>
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_semantic_triggers = {}
let g:ycm_show_diagnostics_ui = 0
let g:ycm_auto_trigger = 0
let g:ycm_key_invoke_completion = '<c-a>'
let g:ycm_key_list_stop_completion = ['<CR>', '<ESC>']
let g:ycm_key_list_select_completion = ['<c-j>', '<Down>', '<Tab>']
let g:ycm_key_list_previous_completion = ['<c-k>', '<Up>']
let g:ycm_filetype_whitelist = {'c':1,'cpp':1,'python':1,'go':1,'sh':1,'lua':1}

