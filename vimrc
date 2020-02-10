set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'fatih/vim-go'
Plugin 'preservim/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,latin1
set backspace=indent,eol,start

set nu ru ai ci hlsearch
set ts=4 sw=4 sts=4 so=4

hi Search ctermbg=White
hi Search ctermfg=Black

syntax enable
syntax on

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

nnoremap <F12> :TagbarToggle<CR>

nnoremap <F11> :NERDTreeToggle<CR>
nnoremap <leader>r :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable = '◢'
let g:NERDTreeDirArrowCollapsible = '▼'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <leader>g :YcmCompleter GoTo<CR>
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_semantic_triggers = {}
let g:ycm_show_diagnostics_ui = 0
let g:ycm_key_invoke_completion = '<c-a>'
let g:ycm_key_list_stop_completion = ['<CR>']
let g:ycm_key_list_select_completion = ['<c-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-k>', '<Up>']
let g:ycm_filetype_whitelist = {'c':1,'cpp':1,'python':1,'go':1,'sh':1,'lua':1}

