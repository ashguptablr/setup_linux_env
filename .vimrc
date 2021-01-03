"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SCOPE settingS for vim           
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" This file contains some boilerplate settings for vim's cscope interface,
" plus some keyboard mappings that I've found useful.
"
" USAGE: 
" -- vim 6:     Stick this file in your ~/.vim/plugin directory (or in a
"               'plugin' directory in some other directory that is in your
"               'runtimepath'.
"
" -- vim 5:     Stick this file somewhere and 'source cscope.vim' it from
"               your ~/.vimrc file (or cut and paste it into your .vimrc).
"
" NOTE: 
" These key maps use multiple keystrokes (2 or 3 keys).  If you find that vim
" keeps timing you out before you can complete them, try changing your timeout
" settings, as explained below.
"
" Happy cscoping,
"
" Jason Duell       jduell@alumni.princeton.edu     2002/3/7
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" This tests to see if vim was configured with the '--enable-cscope' option
" when it was compiled.  If it wasn't, time to recompile vim... 
if has("cscope")

    """"""""""""" Standard cscope/vim boilerplate

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag

    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
    set csto=0

    " add any cscope database in current directory
    if filereadable("cscope.out")
        cs add cscope.out  
    " else add the database pointed to by environment variable 
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    " show msg when any other cscope db added
    set cscopeverbose  


    """"""""""""" My cscope/vim key mappings
    "
    " The following maps all invoke one of the following cscope search types:
    "
    "   's'   symbol: find all references to the token under cursor
    "   'g'   global: find global definition(s) of the token under cursor
    "   'c'   calls:  find all calls to the function name under cursor
    "   't'   text:   find all instances of the text under cursor
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor
    "   'i'   includes: find files that include the filename under cursor
    "   'd'   called: find functions that function under cursor calls
    "
    " Below are three sets of the maps: one set that just jumps to your
    " search result, one that splits the existing vim window horizontally and
    " diplays your search result in the new window, and one that does the same
    " thing, but does a vertical split instead (vim 6 only).
    "
    " I've used CTRL-\ and CTRL-@ as the starting keys for these maps, as it's
    " unlikely that you need their default mappings (CTRL-\'s default use is
    " as part of CTRL-\ CTRL-N typemap, which basically just does the same
    " thing as hitting 'escape': CTRL-@ doesn't seem to have any default use).
    " If you don't like using 'CTRL-@' or CTRL-\, , you can change some or all
    " of these maps to use other keys.  One likely candidate is 'CTRL-_'
    " (which also maps to CTRL-/, which is easier to type).  By default it is
    " used to switch between Hebrew and English keyboard mode.
    "
    " All of the maps involving the <cfile> macro use '^<cfile>$': this is so
    " that searches over '#include <time.h>" return only references to
    " 'time.h', and not 'sys/time.h', etc. (by default cscope will return all
    " files that contain 'time.h' as part of their name).


    " To do the first type of search, hit 'CTRL-\', followed by one of the
    " cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
    " search will be displayed in the current window.  You can use CTRL-T to
    " go back to where you were before the search.  
    "

    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>	


    " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
    " makes the vim window split horizontally, with search result displayed in
    " the new window.
    "
    " (Note: earlier versions of vim may not have the :scs command, but it
    " can be simulated roughly via:
    "    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>	

    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>	


    " Hitting CTRL-space *twice* before the search type does a vertical 
    " split instead of a horizontal one (vim 6 and up only)
    "
    " (Note: you may wish to put a 'set splitright' in your .vimrc
    " if you prefer the new window on the right instead of the left

    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>


    """"""""""""" key map timeouts
    "
    " By default Vim will only wait 1 second for each keystroke in a mapping.
    " You may find that too short with the above typemaps.  If so, you should
    " either turn off mapping timeouts via 'notimeout'.
    "
    "set notimeout 
    "
    " Or, you can keep timeouts, by uncommenting the timeoutlen line below,
    " with your own personal favorite value (in milliseconds):
    "
    "set timeoutlen=4000
    "
    " Either way, since mapping timeout settings by default also set the
    " timeouts for multicharacter 'keys codes' (like <F1>), you should also
    " set ttimeout and ttimeoutlen: otherwise, you will experience strange
    " delays as vim waits for a keystroke after you hit ESC (it will be
    " waiting to see if the ESC is actually part of a key code like <F1>).
    "
    "set ttimeout 
    "
    " personally, I find a tenth of a second to work well for key code
    " timeouts. If you experience problems and have a slow terminal or network
    " connection, set it higher.  If you don't set ttimeoutlen, the value for
    " timeoutlent (default: 1000 = 1 second, which is sluggish) is used.
    "
    "set ttimeoutlen=100

endif

set is
set ic

" Format code the Juniper way
"
" set tabstop=8
set softtabstop=4
set shiftwidth=4
" Do not set "expandtabs", it will prevent you from properly formatting code.
"set noexpandtab
set expandtab

set cinoptions=(0
set ruler
"colorscheme rubyblue
"colorscheme molokai
"colorscheme vitamins
"colorscheme mustang
colorscheme desert
" set background=dark
"----------------------------
" AshGupta way
" Select colormap: 'soft', 'softlight', 'standard' or 'allblue'
"set xterm16_colormap    = 'allblue'

" Select brightness: 'low', 'med', 'high', 'default' or custom levels.
" set xterm16_brightness  = 'default'

"olo xterm16

"----------------------------manas--notworking correctly for me--
"syntax on
"map <F7> :vert scs find g <C-R><C-W><CR> <c-w><c-r><CR>
"map <F6> :scs find g <C-R><C-W> <CR>
"
"set showmode
"set notitle
"set ruler
"set showmatch
"set cindent
"set hls
"set more
"set notitle
"set incsearch
"set hlsearch
"set ic
"set is
"set sm
"set vb
"set smd
"set showcmd
"set sw=4
"set tw=78
"set tags=$SB/src/tags
"set ai shiftwidth=4
"" set smarttab softtabstop=4
"set tabstop=4
"set expandtab
"set ai
"set cin cinoptions=(0 

":syntax on 
":filetype on
"---------------parag=====

set nohls
syntax off
set sw=4
set softtabstop=4
set expandtab
set incsearch
set ignorecase
set smartcase
set scrolloff=2
set cinoptions=(0f0p0l1:0c1
"set comments=sl:/*,mb:*,elx:*/
"set comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
set ttyfast
set backspace=indent,eol,start
set ruler
set showcmd

"
" Set syntax coloring on
"
syn on

"
" Juniper coding style for C
"
:au BufRead,BufNewFile *.c,*.h,*.asm,*.idl  set cindent ai

"
" Settings for editing mails for usage with mutt
"
:au BufRead,BufNewFile mutt*    set textwidth=0

"highlight Statement ctermfg=DarkBlue
"highlight PreProc ctermfg=DarkMagenta
"highlight Type ctermfg=Green
"highlight Identifier ctermfg=DarkBlue

" parag: colours
"highlight Comment       ctermfg=DarkBlue
"highlight Constant      ctermfg=DarkRed
"highlight Special       ctermfg=DarkMagenta
"highlight Identifier    ctermfg=DarkRed
"highlight Statement     ctermfg=DarkRed
"highlight PreProc       ctermfg=DarkRed
"highlight Type          ctermfg=DarkRed
"highlight Underlined    ctermfg=DarkRed
"highlight Ignore        ctermfg=white
"highlight Error         ctermfg=White
"highlight Todo          ctermfg=Black
"highlight Conditional   ctermfg=DarkRed
"
"" parag: colours for C files
"highlight cConditional          ctermfg=darkred
""highlight cStatement            ctermfg=darkblue
""highlight cType                 ctermfg=darkblue
"highlight cSpecial              ctermfg=none
"
"highlight cStatement            ctermfg=darkred
"highlight cLabel                ctermfg=darkred
"highlight cConditional          ctermfg=darkred
"highlight cRepeat               ctermfg=darkred
"highlight cTodo                 ctermfg=none
"highlight cSpecial              ctermfg=darkred
"highlight cFormat               ctermfg=darkred
"highlight cString               ctermfg=darkred
"highlight cCppString            ctermfg=darkred
"highlight cCharacter            ctermfg=none
"highlight cSpecialError         ctermfg=none
"highlight cSpecialCharactxx     ctermfg=none
"highlight cParenError           ctermfg=none
"highlight cIncluded             ctermfg=none
"highlight link cCommentSkip     cComment
"highlight link cCommentString   cComment
"highlight link cComment2String  cComment
"highlight link cCommentStartErxxx cError
"highlight cUserCont             ctermfg=none
"highlight link cUserLabel       cLabel
"highlight cBitField             ctermfg=none
"highlight cOctalZero            ctermfg=none
"highlight link cCppOut          cComment
"highlight link cCppOut2         cCppOut
"highlight link cCppSkip         cCppOut
"highlight cNumber               ctermfg=none
"highlight cFloat                ctermfg=none
"highlight cOctal                ctermfg=none
"highlight link cOctalError      cError
"highlight cNumbersCom           ctermfg=none
"highlight cCppParen             ctermfg=none
"highlight cParen                ctermfg=none
"highlight link cErrInBracket    cError
"highlight cCppBracket           ctermfg=none
"highlight cBracket              ctermfg=none
"highlight link cErrInParen      cError
"highlight cNumbers              ctermfg=none
"highlight link cSpaceError      cError
"highlight link cCommentL        cComment
"highlight link cCommentStart    cComment
""highlight cComment              ctermfg=darkblue
"highlight link cCommentError    cError
"highlight cBlock                ctermfg=none
"highlight cOperator             ctermfg=none
"highlight cType                 ctermfg=darkred
"highlight cStructure            ctermfg=none
"highlight cStorageClass         ctermfg=none
"highlight link cConstant        Constant
"highlight cPreCondit            ctermfg=none
"highlight cInclude              ctermfg=darkmagenta
"highlight cDefine               ctermfg=darkmagenta
"highlight cMulti                ctermfg=none
"highlight link cPreProc         PreProc
"highlight cError                ctermfg=darkred

" parag: For diff files
highlight diffOnly         ctermfg=darkred
highlight diffIdentical    ctermfg=darkred
highlight diffDiffer       ctermfg=darkred
highlight diffBDiffer      ctermfg=darkred
highlight diffIsA          ctermfg=darkred
highlight diffNoEOL        ctermfg=darkred
highlight diffCommon       ctermfg=darkred
highlight diffRemoved      ctermfg=darkred
"highlight diffAdded        ctermfg=DarkBlue
highlight diffChanged      ctermfg=DarkMagenta
highlight diffSubname      ctermfg=DarkMagenta
highlight diffLine         ctermfg=DarkMagenta
highlight diffFile         ctermfg=DarkMagenta
highlight diffOldFile      ctermfg=DarkMagenta
highlight diffNewFile      ctermfg=DarkMagenta
"highlight diffComment      ctermfg=DarkBlue

"
" Vim macro to display output of cvs annotate in another buffer
"
"func ShowAnnotation()
"  exe "silent! new +read\\ !svn\\ blame\\ " . bufname("%")
"  exe 'setfiletype c'
"  exe ':0'
"endfun
"nnoremap <silent> <F9> :call ShowAnnotation()<CR>

"
" Vim macro to display output of cvs diff in another buffer
"
func ShowDiff()
  exe "silent! new +read\\ !cops\\ diff\\ " . bufname("%")
  exe 'setfiletype diff'
  exe ':0'
endfun
nnoremap <silent> <F7> :call ShowDiff()<CR>

" parag
set textwidth=0
"----------for screen title-------
let &titlestring = hostname() . "[vim(" . expand("%:t") . ")]"
if &term == "screen"
  set t_ts=^[k
  set t_fs=^[\
endif
if &term == "screen" || &term == "xterm"
  set title
endif

"===========vnatesh=========
"set autoindent
"set smartindent
"set cindent
" set textwidth=80
"set hidden				" Change buffers without saving.
"set mouse=a				" use mouse everywhere
"set scrolloff=2 			" Keep 2 lines (top/bottom) for scope

" Abbrevations, usefull while coding
":ab #d #define
":ab #i #include

" space / shift-space scroll in normal mode
"noremap <space> <C-F>
"noremap <S-space> <C-U>
"set statusline=%F%m%r%h%w[%L]\t[%{&ff}]\t%y\t[%p%%]\t[%04l,%04v]

if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif
"nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

"set clipboard+=unnamed " share windows clipboard
"set formatoptions=tcqor 
"set cinoptions=:.5s,>1s,p0,t0,(0,g2	" :.5s = indent case statements 1/2
					" shiftwidth
					" >1s = indent 1 shiftwidth
					" p0 = indent function definitions 0
					" spaces
					" t0 = indent function return type 0
					" spaces
					" (0 = indent from unclosed
					" parantheses
					" g2 = indent C++ scope resolution 2
					" spaces
					"set
"cinwords=if,else,while,do,for,switch,case  "Which keywords should indent 
"set wrapmargin=8   "number of characters from the right window border where
		    "wrapping starts. 

"
" Format code the Juniper way (for *.c and *.h only)
"
"set cinoptions=(0

" Only do this part when compiled with support for autocommands.
" Format KNF [kernel normal form] (see 'man style') for FreeBSD based code.
"  autocmd Bufenter,BufNewFile,BufReadPre,FileReadPre *.c,*.c[cpx]?[px]?,*.h[px]?[px]? set tabstop=8
"  autocmd Bufenter,BufNewFile,BufReadPre,FileReadPre *.c,*.c[cpx]?[px]?,*.h[px]?[px]? set formatoptions="croql"
"  autocmd Bufenter,BufNewFile,BufReadPre,FileReadPre *.c,*.c[cpx]?[px]?,*.h[px]?[px]? set cinoptions=':0,>2s,n0,e0,p2s,(2s,t0,=2s'
"  autocmd Bufenter,BufNewFile,BufReadPre,FileReadPre *.c,*.c[cpx]?[px]?,*.h[px]?[px]? set comments=sr:/*,mb:*,el:*/,://


" Make  <ESC>:make  work as expected.
"set makeprg=mk

"set tags=/volume/build/junos/head/daily/current/TAGS
"set tags=./TAGS

"set showmode
"set showcmd

"stamils
"set splitright          " always split to right of current window
"set linebreak
"hi StatusLine term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white

" key maps
" see help "ctrl" for key names
"
" zt moves the current line to beginning of window
" 
map <TAB> :bnext <CR>
map <S-TAB> :bprevious <CR>
map } :stj <c-r><c-w> <CR> zt
map <C-\> :vert stj <C-R><C-W> <CR> zt

":set <F1>=[11~
":set <F2>=[12~ 
":set <F3>=[13~
":set <F4>=[14~
":set <S-F4>=[26~
":set <S-F6>=[29~
":set <S-F7>=[31~
":set <S-F8>=[32~
":set <S-F9>=[33~
":set <S-F12>=[24~


":cmap <F4> <C-\>eescape(getcmdline(), ' \')<CR>
" create all windows equal. use <F8> to maximize current window
set winheight=3
set winminheight=2

let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Use_Right_Window = 0
let Tlist_WinWidth = 40
let Tlist_Auto_Open = 0
let Tlist_Show_One_File = 1


" MiniBufferExplorer Options
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 0
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMapCTabSwitchWindows = 1

" List of dir to search for files when using "find" command
" ,     seperator
" ,,    search in current dir
" .     search in same dir as current file
" **    SEARCH WHOLE Dir tree
" set path=.,,,**

:set tags=$SB/src/tags

"noremap ~ zt

" Make "show list" more useful.
"set listchars+=tab:^-
"set listchars+=trail:`

"Keyboard mappings
"map < :bprevious<CR>  " map < to open previous buffer
"map > :bnext<CR>      " map > to open next buffer
map ,d :bdelete<CR>      " map ,d to delete the curr buffer
map ,e :vsp ~/.vimrc<cr> " edit my .vimrc file in a split
map ,s :source ~/.vimrc<cr> " update the system settings from my vimrc file
map ,b :vsp ~/.bashrc<cr> " update the system settings from my vimrc file

":colorscheme torte

:set history=100

"if filereadable(expand("hints"))
"    au BufNewFile,BufReadPost *.c,*.C,*.cpp,*.CPP,*.cxx  so hints<CR>
"endif

"F1, F4 and F12 are free.
"map <F1>  :!grep -n <c-r><c-w> % \| less <CR>

"Mouse Toggle
"map <silent><F1> :let &mouse=(&mouse == "a"?"":"a")<CR>
"imap <silent><F1> :let &mouse=(&mouse == "a"?"":"a")<CR>

"Paste Toggle
"set pastetoggle=<F2>

"Grep plugin stuff
"nnoremap <silent> <F3> :Grep <C-R><C-W><CR> 

"Lid plugin stuff
":let LID_Cmd='/usr/local/bin/gid'
:let LID_Cmd='/volume/buildtools/bin/lid'
nnoremap <silent> <F5> :Lid <C-R><C-W><CR> 
nnoremap <silent> <F6> :cnext<CR> 
nnoremap <silent> <F7> :cprev<CR> 
nnoremap <silent> <S-F6> :vsp +cnext<CR> 
nnoremap <silent> <S-F7> :vsp +cprev<CR> 

"nnoremap <silent> ,p :colder<CR>	" older Lid windows
"nnoremap <silent> ,n :cnewer<CR>	" newer Lid windows 

"Window Resizing options.
map <F8>  :vert resize +10 <CR>
"map <S-F8>  :vert resize -10 <CR>

" map <F9>  :resize +5 <CR>
"map <S-F9>  :resize -5 <CR>

" F9: for taglist window
"noremap <silent> <F10> :Tlist<CR>

"Mapping to Find a Cscope Definition
"nnoremap <silent> <F11> :CsFindDef <C-R><C-W><CR> 

" Compile the complete jinstall image
"map <F12>  :!mk -j20 jinstall  >& log & <CR>
"map <F4>  :!grep -e error:\  -e warning:\  log \| grep -v jobserver \|\| tail log<CR>
"map <S-F4>  :!grep -e error:\  -e warning:\  $SB/src/pfe/log \| grep -v jobserver \|\| tail $SB/src/pfe/log <CR>
"map <S-F12> :cd $SB/src/pfe; mk ffeb > log &; cd -; <CR>

" Makes Shift-tab work
":exe 'set t_kB=' . nr2char(27) . '[Z'	


function DiffPreview()
 diffthis | vsplit | enew | set buftype=nofile | read # | 1delete | diffthis
endfunction
map <F9> :call DiffPreview()<CR>
"::NERDTree
