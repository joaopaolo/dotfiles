
     syntax on
      set number
      " Toggle line numbers
      nnoremap <leader>N :setlocal number!<cr>
      " Change number colors
      " set Highlight LineNr guifg=black
     
      set enc=utf-8
      set fileencoding=utf-8
      set fileencodings=ucs-bom,utf8,prc;
      
      set clipboard=unnamedplus
      "set clipboard=unnamed
 
      "cursor no blinking
      set guicursor+=a:blinkon0 
      
      "automatically set working directory to current directory
      set autochdir
      
      " hard wrap
      set formatoptions=t1
      
      
      ":set formatprg=par\ -w60 
      
      set wrap
      set tw=60
      set hlsearch
      set smartcase
      set ignorecase
      set incsearch " 

      set noswapfile 
      set nobackup
      
      "left margin
      " :%le6
      
      "keep text in middle of screen
      set scrolloff=999 
      " remove toolbar
      set guioptions-=T
     
      " for autoselect: automatically copy visual selection
      set guioptions+=a
      set clipboard+=autoselect
      " set clipboard=unnamedplus
      "set clipboard=unnamed



     " searches cword + repeat to go to next!
     " nnoremap s g*:let @+=@/<cr><c-l>
     "search cword (*); repeat mapping to advance
     " nnoremap s *:let @+=@/[2:-3]<cr><c-l>  
     "select cword
     nnoremap s viw


    "remap redo
     nnoremap U <c-r>

     "reformat paragraph; don't change cursor position
     nnoremap q <gwap>



      " Keep search in the middle of the screen
      nnoremap n nzzzv
      nnoremap N Nzzzv
      
      
     inoremap jf <Esc>
     inoremap <A-u> <C-w>
     inoremap <A-i> <Esc>dt<Space>i
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
      
      "Both quotation marks at once, for writing dialogue
      inoremap <F11> ""<Left>
      
      
      let mapleader = "\<Space>"
      
      " Remove last search highlighting
      nnoremap <Leader>h :noh<CR>
      
      "abbreviations


call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf'
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-colors-pencil'
Plug 'junegunn/goyo.vim'
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'tpope/vim-markdown'

"Colorschemes
Plug 'mhartington/oceanic-next'
Plug 'arcticicestudio/nord-vim'
Plug 'kamwitsta/dutch_peasants'
Plug 'morhetz/gruvbox'

call plug#end()


" hide menus and tabs

nnoremap <F11> <Esc>:call ToggleGUICruft()<cr>

" redirect commands (but !grep is better)
" source: http://vim.wikia.com/wiki/Redirect_g_search_output

command! -nargs=? Filter let @a='' | execute 'g/<args>/y A' | new | setlocal bt=nofile | put! a
nnoremap <silent> <F3> :redir @a<CR>:g//<CR>:redir END<CR>:new<CR>:put! a<CR>
nnoremap <silent> <F4> :redir >>matches.tmp<CR>:g//<CR>:redir END<CR>:new matches.tmp<CR>


vnoremap <leader>g "gy<Esc>:call GoogleSearch()<CR>
nnoremap <leader>g "gy<Esc>:call GoogleSearch()<CR>

vnoremap <leader>d "gy<Esc>:call DictionarySearch()<CR>
nnoremap <leader>d "gy<Esc>:call DictionarySearch()<CR>

vnoremap <leader>w "gy<Esc>:call WordRefSearch()<CR>
nnoremap <leader>w "gy<Esc>:call WordRefSearch()<CR>

vnoremap <leader>; "gy<Esc>:call ThesaurusSearch()<CR>
nnoremap <leader>; "gy<Esc>:call ThesaurusSearch()<CR>

vnoremap <leader>l "gy<Esc>:call LingueeSearch()<CR>
nnoremap <leader>l "gy<Esc>:call LingueeSearch()<CR>


vnoremap <leader>lt "gy<Esc>:call LittreSearch()<CR>
nnoremap <leader>lt "gy<Esc>:call LittreSearch()<CR>

vnoremap <leader>t "gy<Esc>:call TermiumSearch()<CR>
vnoremap <leader>t "gy<Esc>:call TermiumSearch()<CR>

function! ToggleGUICruft()
  if &guioptions=='i'
    exec('set guioptions=imTrL')
  else
    exec('set guioptions=i')
  endif
endfunction

" by default, hide gui menus
set guioptions=i



 
function! GoogleSearch()
     let searchterm = getreg("g")
     silent! exec "silent! !chromium \"http://google.com/search?q=" . searchterm . "\" &"
endfunction

function! DictionarySearch()
     let searchterm = getreg("g")
     silent! exec "silent! !chromium \"http://dictionary.com/browse/" . searchterm . "\" &"
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









