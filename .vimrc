"                                              
"                __                            
"        __  __ /\_\    ___ ___   _ __   ___   
"       /\ \/\ \\/\ \ /' __` __`\/\`'__\/'___\ 
"     __\ \ \_/ |\ \ \/\ \/\ \/\ \ \ \//\ \__/ 
"    /\_\\ \___/  \ \_\ \_\ \_\ \_\ \_\\ \____\
"    \/_/ \/__/    \/_/\/_/\/_/\/_/\/_/ \/____/
"                                              
"                                            

" -------------------------------- "
"       Load plugins (plugged)     "
" -------------------------------- " 
        call plug#begin('~/.vim/plugged')
        Plug 'junegunn/seoul256.vim'
        Plug 'junegunn/goyo.vim'
        Plug 'junegunn/limelight.vim'
        Plug 'lervag/vimtex'
        Plug 'godlygeek/tabular'
        Plug 'scrooloose/nerdtree'
        call plug#end()


" -------------------------------- "
"          Editor settings         "
" -------------------------------- " 
        set relativenumber
        set nu rnu
        highlight LineNr ctermfg=265
        map <C-n> :NERDTreeToggle<CR>
        autocmd! User GoyoEnter Limelight
        autocmd! User GoyoLeave Limelight!
        autocmd BufReadPost *.md Goyo 74x80%

" -------------------------------- "
"    Don't know what this means    "
"              :(                  "
" -------------------------------- "
        " augroup Goyo
        "        autocmd!
        " Always enable Goyo.
        " autocmd BufReadPost * Goyo 80x80%
        " autocmd BufReadPost *.md Goyo 74x80% -- took this cmd => editor settings
        "        autocmd BufReadPost neofetch Goyo 100x80%
        "
                " Equalize splits on resize.
        "        autocmd VimResized * execute "normal \<C-W>="
        "    augroup END

" -------------------------------- "
"        Limelight settings        "
" -------------------------------- "
        " Color name (:help cterm-colors) or ANSI code
        " let g:limelight_conceal_ctermfg = 'gray'
        let g:limelight_conceal_ctermfg = 265

        " Color name (:help gui-colors) or RGB color
        let g:limelight_conceal_guifg = 'DarkGray'
        let g:limelight_conceal_guifg = '#777777'

        " Default: 0.5
        let g:limelight_default_coefficient = 0.7

        " Number of preceding/following paragraphs to include (default: 0)
        let g:limelight_paragraph_span = 1

        " Beginning/end of paragraph
        "   When there's no empty line between the paragraphs
        "   and each paragraph starts with indentation
        let g:limelight_bop = '^\s'
        let g:limelight_eop = '\ze\n^\s'

        " Highlighting priority (default: 10)
        "   Set it to -1 not to overrule hlsearch
        let g:limelight_priority = -1
