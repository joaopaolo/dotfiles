
     syntax on
      set number
      " Toggle line numbers
      nnoremap <leader>N :setlocal number!<cr>
      " Change number colors
      " set Highlight LineNr guifg=black
     
      set enc=utf-8
      set fileencoding=utf-8
      set fileencodings=ucs-bom,utf8,prc;
      

 
      "cursor no blinking
      set guicursor+=a:blinkon0 
      
      " hard wrap
      set formatoptions=t1
      
      
      ":set formatprg=par\ -w60 
      
      set wrap
      set tw=60
      set hlsearch
      set smartcase
      set ignorecase
      set incsearch " Searches for strings as you type
      
      set noswapfile 
      set nobackup
      
      "left margin
      " :%le6
      
      "keep text in middle of screen
      set scrolloff=999 
      " remove toolbar
      set guioptions-=T
      
      " Keep search in the middle of the screen
      nnoremap n nzzzv
      nnoremap N Nzzzv
      
      
      inoremap jf <Esc>
     inoremap <A-u> <C-w>
     inoremap <A-i> <Esc>lciW
     inoremap <A-o> <C-o>b
     inoremap <A-p> <C-o>w
     inoremap <A-j> <C-o>j
     inoremap <A-k> <C-o>k
     inoremap <A-l> <left>
     inoremap <A-;> <right>
     " inoremap <A-n> <Esc>)i
     " inoremap <A-r> <Esc>(     


      "inoremap <CR> <Esc>:w<CR>zz<CR>i
      
      nnoremap ; :
      
      
      
      
      let mapleader = "\<Space>"
      
      " Remove last search highlighting
      nnoremap <Leader>h :noh<CR>
      
      "abbreviations


call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf'
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-colors-pencil'
Plug 'junegunn/goyo.vim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'tpope/vim-markdown'

"Colorschemes
Plug 'mhartington/oceanic-next'
Plug 'arcticicestudio/nord-vim'
Plug 'kamwitsta/dutch_peasants'
call plug#end()


vnoremap <leader>g "gy<Esc>:call GoogleSearch()<CR>
vnoremap <leader>w "gy<Esc>:call WordRefSearch()<CR>
vnoremap <leader>; "gy<Esc>:call ThesaurusSearch()<CR>
vnoremap <leader>l "gy<Esc>:call LingueeSearch()<CR>
vnoremap <leader>lt "gy<Esc>:call LittreSearch()<CR>
vnoremap <leader>t "gy<Esc>:call TermiumSearch()<CR>


 
function! GoogleSearch()
     let searchterm = getreg("g")
     silent! exec "silent! !chromium \"http://google.com/search?q=" . searchterm . "\" &"
endfunction

function! WordRefSearch()
     let searchterm = getreg("g")
     silent! exec "silent! !chromium \ "http://www.wordreference.com/fren/" . searchterm . "\" &"
endfunction


function! ThesaurusSearch()
     let searchterm = getreg("g")
     silent! exec "silent! !chromium \"http://www.thesaurus.com/browse/" . searchterm . "\" &"
endfunction

function! LingueeSearch()
     let searchterm = getreg("g")
     silent! exec "silent! !chromium \"https://www.linguee.com/french-english/search?source=auto&query=" . searchterm . "\" &"
endfunction


function! LittreSearch()
     let searchterm = getreg("g")
     silent! exec "silent! !chromium \"https://www.littre.org/definition/" . searchterm . "\" &"
endfunction


function! TermiumSearch()
     let searchterm = getreg("g")
     silent! exec "silent! !chromium \"http://www.btb.termiumplus.gc.ca/tpv2alpha/alpha-eng.html?lang=eng&i=1&srchtxt=" . searchterm . "\" &"
endfunction









