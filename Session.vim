let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
inoremap <silent> <SNR>56_yrrecord =YRRecord3()
inoremap <S-Tab> 
xmap  <Plug>SpeedDatingUp
nmap  <Plug>SpeedDatingUp
noremap  h
nmap 	 :NERDTreeToggle
noremap <NL> j
noremap  k
noremap  l
xnoremap <silent>  :call multiple_cursors#new("v")
nnoremap <silent>  :call multiple_cursors#new("n")
nnoremap <silent>  :CtrlP
nnoremap <silent>  :call repeat#wrap("\<C-R>",v:count)
map  :w
xmap  <Plug>SpeedDatingDown
nmap  <Plug>SpeedDatingDown
vnoremap   za
nnoremap   za
nnoremap * *
nmap ,ca <Plug>NERDCommenterAltDelims
xmap ,cu <Plug>NERDCommenterUncomment
nmap ,cu <Plug>NERDCommenterUncomment
xmap ,cb <Plug>NERDCommenterAlignBoth
nmap ,cb <Plug>NERDCommenterAlignBoth
xmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cA <Plug>NERDCommenterAppend
xmap ,cy <Plug>NERDCommenterYank
nmap ,cy <Plug>NERDCommenterYank
xmap ,cs <Plug>NERDCommenterSexy
nmap ,cs <Plug>NERDCommenterSexy
xmap ,ci <Plug>NERDCommenterInvert
nmap ,ci <Plug>NERDCommenterInvert
nmap ,c$ <Plug>NERDCommenterToEOL
xmap ,cn <Plug>NERDCommenterNested
nmap ,cn <Plug>NERDCommenterNested
xmap ,cm <Plug>NERDCommenterMinimal
nmap ,cm <Plug>NERDCommenterMinimal
xmap ,c  <Plug>NERDCommenterToggle
nmap ,c  <Plug>NERDCommenterToggle
xmap ,cc <Plug>NERDCommenterComment
nmap ,cc <Plug>NERDCommenterComment
vnoremap ,e :python debugger.handle_visual_eval()
nnoremap <silent> ,] :YRReplace '1', p
nnoremap <silent> ,[ :YRReplace '-1', P
map ,rwp <Plug>RestoreWinPosn
map ,swp <Plug>SaveWinPosn
map ,tt <Plug>AM_tt
map ,tsq <Plug>AM_tsq
map ,tsp <Plug>AM_tsp
map ,tml <Plug>AM_tml
map ,tab <Plug>AM_tab
map ,m= <Plug>AM_m=
map ,t@ <Plug>AM_t@
map ,t~ <Plug>AM_t~
map ,t? <Plug>AM_t?
map ,w= <Plug>AM_w=
map ,ts= <Plug>AM_ts=
map ,ts< <Plug>AM_ts<
map ,ts; <Plug>AM_ts;
map ,ts: <Plug>AM_ts:
map ,ts, <Plug>AM_ts,
map ,t= <Plug>AM_t=
map ,t< <Plug>AM_t<
map ,t; <Plug>AM_t;
map ,t: <Plug>AM_t:
map ,t, <Plug>AM_t,
map ,t# <Plug>AM_t#
map ,t| <Plug>AM_t|
map ,T~ <Plug>AM_T~
map ,Tsp <Plug>AM_Tsp
map ,Tab <Plug>AM_Tab
map ,T@ <Plug>AM_T@
map ,T? <Plug>AM_T?
map ,T= <Plug>AM_T=
map ,T< <Plug>AM_T<
map ,T; <Plug>AM_T;
map ,T: <Plug>AM_T:
map ,Ts, <Plug>AM_Ts,
map ,T, <Plug>AM_T,o
map ,T# <Plug>AM_T#
map ,T| <Plug>AM_T|
map ,Htd <Plug>AM_Htd
map ,anum <Plug>AM_aunum
map ,aunum <Plug>AM_aenum
map ,afnc <Plug>AM_afnc
map ,adef <Plug>AM_adef
map ,adec <Plug>AM_adec
map ,ascom <Plug>AM_ascom
map ,aocom <Plug>AM_aocom
map ,adcom <Plug>AM_adcom
map ,acom <Plug>AM_acom
map ,abox <Plug>AM_abox
map ,a( <Plug>AM_a(
map ,a= <Plug>AM_a=
map ,a< <Plug>AM_a<
map ,a, <Plug>AM_a,
map ,a? <Plug>AM_a?
vnoremap ,G :w !gist -p -t %:e | pbcopy
nnoremap <silent> ,bd :Bclose
nnoremap <silent> ,	 :ScratchToggle
nnoremap ,et sj:e ~/.tmux.conf
nnoremap ,ez sj:e ~/.zshrc
nnoremap ,eg sj:e ~/.gitconfig
nnoremap ,es sj:e ~/.vim/snippets/
nnoremap ,ev sj:e $MYVIMRC
nnoremap ,z zMzvzz
nnoremap ,h sj
nnoremap ,v vl
noremap ,bn :bnext
noremap ,bp :bprevious
nnoremap <silent> ,h3 :execute '3match InterestingWord3 /\<\>/'
nnoremap <silent> ,h2 :execute '2match InterestingWord2 /\<\>/'
nnoremap <silent> ,h1 :execute 'match InterestingWord1 /\<\>/'
nnoremap <silent> ,? :execute 'vimgrep /'.@/.'/g %':copen
noremap ,  :noh:call clearmatches()
nmap ,wq :w!:Bclose
nnoremap ,L ^vg_y:execute @@
vnoremap ,L y:execute @@
nmap <silent> ,ii :set invrelativenumber
nmap <silent> ,pp :set invpaste
nmap <silent> ,nn :set invnumber
nmap <silent> ,ll :set invlist
nnoremap <silent> ,hh :execute 'match InterestingWord1 /\<\>/'
noremap <silent> ,/ :nohls
nnoremap ,po "*p
vnoremap ,yo "*y
nnoremap ,m :w | !lessc % > %:t:r.css 
vmap ,f y:let @/=escape(@", '\\[]$^*.'):set hls:silent Ggrep -F "=escape(@", '\\"#')":ccl:cw
nmap ,f :let @/="\\<\\>":set hls:silent Ggrep -w "":ccl:cw
nmap ,g :Ggrep
vmap ,# :call NERDComment(0, "invert")
nmap ,# :call NERDComment(0, "invert")
nmap ,t :TagbarToggle
map ,rl :VimuxRunLastCommand
map ,rp :VimuxPromptCommand
nmap ,be :EasyBufferToggle
nmap ,y :YRShow
nmap ,p :Hammer
nnoremap ,a :Ag -i 
nnoremap <silent> . :call repeat#run(v:count)
vnoremap / /\v
nnoremap / /\v
vnoremap < <gv
vnoremap > >gv
nmap @ :YRMapsMacro
imap Ð <Plug>yankstack_substitute_newer_paste
imap ð <Plug>yankstack_substitute_older_paste
nnoremap H ^
vnoremap H ^
nnoremap L g_
vnoremap L g_
nnoremap N Nzzzv
xnoremap <silent> P :YRPaste 'P', 'v'
nnoremap <silent> P :YRPaste 'P'
nnoremap <silent> U :call repeat#wrap('U',v:count)
smap Y y$
omap Y y$
vmap [% [%m'gv``
nmap [xx <Plug>unimpaired_line_xml_encode
xmap [x <Plug>unimpaired_xml_encode
nmap [x <Plug>unimpaired_xml_encode
nmap [uu <Plug>unimpaired_line_url_encode
xmap [u <Plug>unimpaired_url_encode
nmap [u <Plug>unimpaired_url_encode
nmap [yy <Plug>unimpaired_line_string_encode
xmap [y <Plug>unimpaired_string_encode
nmap [y <Plug>unimpaired_string_encode
nmap [p <Plug>unimpairedPutAbove
nnoremap [ov :set virtualedit+=all
nnoremap [ox :set cursorline cursorcolumn
nnoremap [ow :set wrap
nnoremap [os :set spell
nnoremap [or :set relativenumber
nnoremap [on :set number
nnoremap [ol :set list
nnoremap [oi :set ignorecase
nnoremap [oh :set hlsearch
nnoremap [od :diffthis
nnoremap [ou :set cursorcolumn
nnoremap [oc :set cursorline
nnoremap [ob :set background=light
xmap [e <Plug>unimpairedMoveSelectionUp
nmap [e <Plug>unimpairedMoveUp
nmap [  <Plug>unimpairedBlankUp
omap [n <Plug>unimpairedContextPrevious
nmap [n <Plug>unimpairedContextPrevious
nmap [o <Plug>unimpairedOPrevious
nmap [f <Plug>unimpairedDirectoryPrevious
nmap <silent> [T <Plug>unimpairedTFirst
nmap <silent> [t <Plug>unimpairedTPrevious
nmap <silent> [ <Plug>unimpairedQPFile
nmap <silent> [Q <Plug>unimpairedQFirst
nmap <silent> [q <Plug>unimpairedQPrevious
nmap <silent> [ <Plug>unimpairedLPFile
nmap <silent> [L <Plug>unimpairedLFirst
nmap <silent> [l <Plug>unimpairedLPrevious
nmap <silent> [B <Plug>unimpairedBFirst
nmap <silent> [b <Plug>unimpairedBPrevious
nmap <silent> [A <Plug>unimpairedAFirst
nmap <silent> [a <Plug>unimpairedAPrevious
map \d :call VimuxRunCommand(@v, 0)
nmap ]t :PBoB
nmap ]f :call PythonDec("function", 1)
nmap ]e :PEoB
nmap ]u :call PythonUncommentSelection()
nmap ]< ]tV]e<
nmap ]> ]tV]e>
nmap ]# :call PythonCommentSelection()
nmap ]J :call PythonDec("class", -1)
nmap ]j :call PythonDec("class", 1)
nmap ]F :call PythonDec("function", -1)
vmap ]f :call PythonDec("function", 1)
vmap ]F :call PythonDec("function", -1)
omap ]F :call PythonDec("function", -1)
vmap ]j :call PythonDec("class", 1)
omap ]j :call PythonDec("class", 1)
vmap ]J :call PythonDec("class", -1)
omap ]J :call PythonDec("class", -1)
map ]<Down> :call PythonNextLine(1)
map ]<Up> :call PythonNextLine(-1)
map ]d :call PythonSelectObject("function")
map ]c :call PythonSelectObject("class")
vmap ]u :call PythonUncommentSelection()
vmap ]# :call PythonCommentSelection()
omap ]# :call PythonCommentSelection()
vmap ]> >
omap ]> ]tV]e>
vmap ]< <
omap ]< ]tV]e<
map ]v ]tV]e
vmap ]e :PEoBm'gv``
vmap ]t :PBOBm'gv``
vmap ]% ]%m'gv``
nmap ]xx <Plug>unimpaired_line_xml_decode
xmap ]x <Plug>unimpaired_xml_decode
nmap ]x <Plug>unimpaired_xml_decode
nmap ]uu <Plug>unimpaired_line_url_decode
omap ]u :call PythonUncommentSelection()
nmap ]yy <Plug>unimpaired_line_string_decode
xmap ]y <Plug>unimpaired_string_decode
nmap ]y <Plug>unimpaired_string_decode
nmap ]p <Plug>unimpairedPutBelow
nnoremap ]ov :set virtualedit-=all
nnoremap ]ox :set nocursorline nocursorcolumn
nnoremap ]ow :set nowrap
nnoremap ]os :set nospell
nnoremap ]or :set norelativenumber
nnoremap ]on :set nonumber
nnoremap ]ol :set nolist
nnoremap ]oi :set noignorecase
nnoremap ]oh :set nohlsearch
nnoremap ]od :diffoff
nnoremap ]ou :set nocursorcolumn
nnoremap ]oc :set nocursorline
nnoremap ]ob :set background=dark
omap ]e :PEoB
nmap ]  <Plug>unimpairedBlankDown
omap ]n <Plug>unimpairedContextNext
nmap ]n <Plug>unimpairedContextNext
nmap ]o <Plug>unimpairedONext
omap ]f :call PythonDec("function", 1)
nmap <silent> ]T <Plug>unimpairedTLast
omap ]t :PBoB
nmap <silent> ] <Plug>unimpairedQNFile
nmap <silent> ]Q <Plug>unimpairedQLast
nmap <silent> ]q <Plug>unimpairedQNext
nmap <silent> ] <Plug>unimpairedLNFile
nmap <silent> ]L <Plug>unimpairedLLast
nmap <silent> ]l <Plug>unimpairedLNext
nmap <silent> ]B <Plug>unimpairedBLast
nmap <silent> ]b <Plug>unimpairedBNext
nmap <silent> ]A <Plug>unimpairedALast
nmap <silent> ]a <Plug>unimpairedANext
vmap a% [%v]%
vnoremap ar a[
onoremap ar a[
nnoremap cov :set =(&virtualedit =~# "all") ? 'virtualedit-=all' : 'virtualedit+=all'
nnoremap cox :set =&cursorline && &cursorcolumn ? 'nocursorline nocursorcolumn' : 'cursorline cursorcolumn'
nnoremap cod :=&diff ? 'diffoff' : 'diffthis'
nnoremap cob :set background==&background == 'dark' ? 'light' : 'dark'
nmap cs <Plug>Csurround
xnoremap <silent> d :YRDeleteRange 'v'
nmap ds <Plug>Dsurround
nmap d <Plug>SpeedDatingNowLocal
nmap d <Plug>SpeedDatingNowUTC
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> gP :YRPaste 'gP'
nnoremap <silent> gp :YRPaste 'gp'
xmap gS <Plug>VgSurround
nnoremap g, g,zz
nnoremap g; g;zz
vnoremap ir i[
onoremap ir i[
xnoremap j gj
nnoremap j gj
xnoremap k gk
nnoremap k gk
nnoremap n nzzzv
xnoremap <silent> p :YRPaste 'p', 'v'
nnoremap <silent> p :YRPaste 'p'
nnoremap <silent> u :call repeat#wrap('u',v:count)
xnoremap <silent> x :YRDeleteRange 'v'
xnoremap <silent> y :YRYankRange 'v'
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap zO zCzO
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
noremap <F10> :python debugger.set_breakpoint()
noremap <F5> :python debugger.run()
nnoremap <silent> <SNR>56_yrrecord :call YRRecord3()
nmap <silent> <Plug>unimpairedOPrevious <Plug>unimpairedDirectoryPrevious:echohl WarningMSG|echo "[o is deprecated. Use [f"|echohl NONE
nmap <silent> <Plug>unimpairedONext <Plug>unimpairedDirectoryNext:echohl WarningMSG|echo "]o is deprecated. Use ]f"|echohl NONE
nnoremap <silent> <Plug>unimpairedTLast :exe "".(v:count ? v:count : "")."tlast"
nnoremap <silent> <Plug>unimpairedTFirst :exe "".(v:count ? v:count : "")."tfirst"
nnoremap <silent> <Plug>unimpairedTNext :exe "".(v:count ? v:count : "")."tnext"
nnoremap <silent> <Plug>unimpairedTPrevious :exe "".(v:count ? v:count : "")."tprevious"
nnoremap <silent> <Plug>unimpairedQNFile :exe "".(v:count ? v:count : "")."cnfile"zv
nnoremap <silent> <Plug>unimpairedQPFile :exe "".(v:count ? v:count : "")."cpfile"zv
nnoremap <silent> <Plug>unimpairedQLast :exe "".(v:count ? v:count : "")."clast"zv
nnoremap <silent> <Plug>unimpairedQFirst :exe "".(v:count ? v:count : "")."cfirst"zv
nnoremap <silent> <Plug>unimpairedQNext :exe "".(v:count ? v:count : "")."cnext"zv
nnoremap <silent> <Plug>unimpairedQPrevious :exe "".(v:count ? v:count : "")."cprevious"zv
nnoremap <silent> <Plug>unimpairedLNFile :exe "".(v:count ? v:count : "")."lnfile"zv
nnoremap <silent> <Plug>unimpairedLPFile :exe "".(v:count ? v:count : "")."lpfile"zv
nnoremap <silent> <Plug>unimpairedLLast :exe "".(v:count ? v:count : "")."llast"zv
nnoremap <silent> <Plug>unimpairedLFirst :exe "".(v:count ? v:count : "")."lfirst"zv
nnoremap <silent> <Plug>unimpairedLNext :exe "".(v:count ? v:count : "")."lnext"zv
nnoremap <silent> <Plug>unimpairedLPrevious :exe "".(v:count ? v:count : "")."lprevious"zv
nnoremap <silent> <Plug>unimpairedBLast :exe "".(v:count ? v:count : "")."blast"
nnoremap <silent> <Plug>unimpairedBFirst :exe "".(v:count ? v:count : "")."bfirst"
nnoremap <silent> <Plug>unimpairedBNext :exe "".(v:count ? v:count : "")."bnext"
nnoremap <silent> <Plug>unimpairedBPrevious :exe "".(v:count ? v:count : "")."bprevious"
nnoremap <silent> <Plug>unimpairedALast :exe "".(v:count ? v:count : "")."last"
nnoremap <silent> <Plug>unimpairedAFirst :exe "".(v:count ? v:count : "")."first"
nnoremap <silent> <Plug>unimpairedANext :exe "".(v:count ? v:count : "")."next"
nnoremap <silent> <Plug>unimpairedAPrevious :exe "".(v:count ? v:count : "")."previous"
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <Plug>SpeedDatingNowUTC :call speeddating#timestamp(1,v:count)
nnoremap <silent> <Plug>SpeedDatingNowLocal :call speeddating#timestamp(0,v:count)
vnoremap <silent> <Plug>SpeedDatingDown :call speeddating#incrementvisual(-v:count1)
vnoremap <silent> <Plug>SpeedDatingUp :call speeddating#incrementvisual(v:count1)
nnoremap <silent> <Plug>SpeedDatingDown :call speeddating#increment(-v:count1)
nnoremap <silent> <Plug>SpeedDatingUp :call speeddating#increment(v:count1)
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()
nmap <SNR>33_WE <Plug>AlignMapsWrapperEnd
map <SNR>33_WS <Plug>AlignMapsWrapperStart
vmap <C-Down> ]egv
vmap <C-Up> [egv
nmap <C-Down> ]e
nmap <C-Up> [e
noremap <Right> <Nop>
noremap <Down> <Nop>
noremap <Up> <Nop>
noremap <Left> <Nop>
cnoremap  <Home>
cnoremap  <End>
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap 	 =InsertTabWrapper()
inoremap  
imap  <Plug>DiscretionaryEnd
imap  <Plug>Isurround
xmap Ð <Plug>yankstack_substitute_newer_paste
nmap Ð <Plug>yankstack_substitute_newer_paste
xmap ð <Plug>yankstack_substitute_older_paste
nmap ð <Plug>yankstack_substitute_older_paste
cabbr gitv =(getcmdtype()==':' && getcmdpos()==1 ? 'Gitv' : 'gitv')
iabbr z@ oh@zaiste.net
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set backup
set backupdir=~/.vim/tmp/backup//
set binary
set cinoptions=:0,(s,u0,U1,g0,t0
set cmdheight=2
set completeopt=longest,menuone,preview
set dictionary=/usr/share/dict/words
set directory=~/.vim/tmp/swap//
set expandtab
set exrc
set fileencodings=ucs-bom,utf-8,default,latin1
set foldlevelstart=0
set formatoptions=qrn1
set helplang=en
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:␣
set matchtime=2
set nomodeline
set modelines=0
set omnifunc=syntaxcomplete#Complete
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,~/.vim/bundle/vundle,~/.vim/bundle/editorconfig-vim,~/.vim/bundle/ag.vim,~/.vim/bundle/hammer.vim,~/.vim/bundle/vim-align,~/.vim/bundle/vim-endwise,~/.vim/bundle/vim-repeat,~/.vim/bundle/vim-speeddating,~/.vim/bundle/vim-surround,~/.vim/bundle/vim-unimpaired,~/.vim/bundle/vim-yankstack,~/.vim/bundle/vim-eunuch,~/.vim/bundle/nerdtree,~/.vim/bundle/vim-textobj-user,~/.vim/bundle/YankRing.vim,~/.vim/bundle/vim-indent-object,~/.vim/bundle/vim-matchit,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/scratch.vim,~/.vim/bundle/easybuffer.vim,~/.vim/bundle/vim-multiple-cursors,~/.vim/bundle/vim-airline,~/.vim/bundle/tmux.vim,~/.vim/bundle/vimux,~/.vim/bundle/tagbar,~/.vim/bundle/gitv,~/.vim/bundle/vdebug,~/.vim/bundle/nerdcommenter,~/.vim/bundle/splice.vim,~/.vim/bundle/vim-fugitive,~/.vim/bundle/syntastic,~/.vim/bundle/Reindent,~/.vim/bundle/python-mode,~/.vim/bundle/python.vim,~/.vim/bundle/python_match.vim,~/.vim/bundle/pythoncomplete,~/.vim/bundle/vim-haml,~/.vim/bundle/mustache.vim,~/.vim/bundle/vim-markdown,~/.vim/bundle/vim-jade,~/.vim/bundle/vim-slim,~/.vim/bundle/vim-stylus,~/.vim/bundle/vim-less,~/.vim/bundle/vim-coffee-script,~/.vim/bundle/jacinto.vim,~/.vim/bundle/badwolf,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/molokai,~/.vim/bundle/Atom,~/.vim/bundle/vim-hybrid,~/.vim/bundle/base16-vim,~/.vim/bundle/vim-colorscheme-elive,~/.vim/bundle/vim-kolor,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/bundle/vundle/,~/.vim/bundle/vundle/after,~/.vim/bundle/editorconfig-vim/after,~/.vim/bundle/ag.vim/after,~/.vim/bundle/hammer.vim/after,~/.vim/bundle/vim-align/after,~/.vim/bundle/vim-endwise/after,~/.vim/bundle/vim-repeat/after,~/.vim/bundle/vim-speeddating/after,~/.vim/bundle/vim-surround/after,~/.vim/bundle/vim-unimpaired/after,~/.vim/bundle/vim-yankstack/after,~/.vim/bundle/vim-eunuch/after,~/.vim/bundle/nerdtree/after,~/.vim/bundle/vim-textobj-user/after,~/.vim/bundle/YankRing.vim/after,~/.vim/bundle/vim-indent-object/after,~/.vim/bundle/vim-matchit/after,~/.vim/bundle/ctrlp.vim/after,~/.vim/bundle/scratch.vim/after,~/.vim/bundle/easybuffer.vim/after,~/.vim/bundle/vim-multiple-cursors/after,~/.vim/bundle/vim-airline/after,~/.vim/bundle/tmux.vim/after,~/.vim/bundle/vimux/after,~/.vim/bundle/tagbar/after,~/.vim/bundle/gitv/after,~/.vim/bundle/vdebug/after,~/.vim/bundle/nerdcommenter/after,~/.vim/bundle/splice.vim/after,~/.vim/bundle/vim-fugitive/after,~/.vim/bundle/syntastic/after,~/.vim/bundle/Reindent/after,~/.vim/bundle/python-mode/after,~/.vim/bundle/python.vim/after,~/.vim/bundle/python_match.vim/after,~/.vim/bundle/pythoncomplete/after,~/.vim/bundle/vim-haml/after,~/.vim/bundle/mustache.vim/after,~/.vim/bundle/vim-markdown/after,~/.vim/bundle/vim-jade/after,~/.vim/bundle/vim-slim/after,~/.vim/bundle/vim-stylus/after,~/.vim/bundle/vim-less/after,~/.vim/bundle/vim-coffee-script/after,~/.vim/bundle/jacinto.vim/after,~/.vim/bundle/badwolf/after,~/.vim/bundle/vim-colors-solarized/after,~/.vim/bundle/molokai/after,~/.vim/bundle/Atom/after,~/.vim/bundle/vim-hybrid/after,~/.vim/bundle/base16-vim/after,~/.vim/bundle/vim-colorscheme-elive/after,~/.vim/bundle/vim-kolor/after
set secure
set shiftround
set shiftwidth=4
set showbreak=↪
set showcmd
set showmatch
set smartcase
set softtabstop=4
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set switchbuf=useopen
set tabstop=4
set textwidth=68
set notimeout
set ttimeout
set ttimeoutlen=10
set undodir=~/.vim/tmp/undo//
set undofile
set undolevels=3000
set visualbell
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc,tmp,*.scssc,*.pyc
set wildmenu
set winwidth=83
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/workspace/appengine-django-skeleton
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +53 keeptrack/views.py
badd +31 django/contrib/gis/tests/geoapp/models.py
badd +645 django/django/http/__init__.py
badd +12 keeptrack/models.py
badd +18 templates/keeptrack/track.html
badd +23 templates/keeptrack/index.html
badd +138 djangoappengine/djangoappengine/tests/keys.py
badd +27 djangoappengine/djangoappengine/tests/mapreduce_input_readers.py
badd +152 djangoappengine/tests/keys.py
badd +29 djangoappengine/tests/mapreduce_input_readers.py
silent! argdel *
edit keeptrack/views.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 3 + 29) / 58)
exe 'vert 1resize ' . ((&columns * 88 + 102) / 205)
exe '2resize ' . ((&lines * 51 + 29) / 58)
exe 'vert 2resize ' . ((&columns * 88 + 102) / 205)
exe '3resize ' . ((&lines * 28 + 29) / 58)
exe 'vert 3resize ' . ((&columns * 116 + 102) / 205)
exe '4resize ' . ((&lines * 26 + 29) / 58)
exe 'vert 4resize ' . ((&columns * 116 + 102) / 205)
argglobal
enew
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal binary
setlocal bufhidden=wipe
setlocal buflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=:0,(s,u0,U1,g0,t0
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != ''
setlocal filetype=
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
set foldtext=MyFoldText()
setlocal foldtext=MyFoldText()
setlocal formatexpr=
setlocal formatoptions=qrn1
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal nomodifiable
setlocal nrformats=octal,hex
setlocal nonumber
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal previewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=68
setlocal thesaurus=
setlocal undofile
setlocal winfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
wincmd w
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <Nul> =pymode#rope#complete(0)
inoremap <buffer> <silent> <C-Space> =pymode#rope#complete(0)
noremap <buffer> <silent> ra :PymodeRopeAutoImport
noremap <buffer> <silent> r1p :call pymode#rope#module_to_package()
noremap <buffer> <silent> rnc :call pymode#rope#generate_class()
noremap <buffer> <silent> rnp :call pymode#rope#generate_package()
noremap <buffer> <silent> rnf :call pymode#rope#generate_function()
noremap <buffer> <silent> ru :call pymode#rope#use_function()
noremap <buffer> <silent> rs :call pymode#rope#signature()
noremap <buffer> <silent> rv :call pymode#rope#move()
noremap <buffer> <silent> ri :call pymode#rope#inline()
vnoremap <buffer> <silent> rl :call pymode#rope#extract_variable()
vnoremap <buffer> <silent> rm :call pymode#rope#extract_method()
noremap <buffer> <silent> r1r :call pymode#rope#rename_module()
noremap <buffer> <silent> rr :call pymode#rope#rename()
noremap <buffer> <silent> ro :call pymode#rope#organize_imports()
noremap <buffer> <silent> f :call pymode#rope#find_it()
noremap <buffer> <silent> d :call pymode#rope#show_doc()
noremap <buffer> <silent> g :call pymode#rope#goto_definition()
nnoremap <buffer> <silent> ,b :call pymode#breakpoint#operate(line('.'))
vnoremap <buffer> <silent> ,r :PymodeRun
nnoremap <buffer> <silent> ,r :PymodeRun
onoremap <buffer> C :call pymode#motion#select('^\s*class\s', 0)
vnoremap <buffer> <silent> K :call pymode#doc#show(@*)
nnoremap <buffer> <silent> K :call pymode#doc#find()
onoremap <buffer> M :call pymode#motion#select('^\s*def\s', 0)
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('^\(class\|def\)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
onoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('^\(class\|def\)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
onoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
onoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
vnoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
vnoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
inoremap <buffer> <silent> . .=pymode#rope#complete_on_dot()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal binary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e
setlocal cinoptions=:0,(s,u0,U1,g0,t0
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:XCOMM,n:>,fb:-
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^s*\\(def\\|class\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=pymode#folding#expr(v:lnum)
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
set foldtext=MyFoldText()
setlocal foldtext=pymode#folding#text()
setlocal formatexpr=
setlocal formatoptions=qrn1
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=pymode#indent#get_indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=pymode#rope#completions
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.py
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tags=~/workspace/appengine-django-skeleton/.git/python.tags,~/workspace/appengine-django-skeleton/.git/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
set winfixwidth
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
14
normal! zo
19
normal! zo
30
normal! zo
31
normal! zo
40
normal! zo
76
normal! zo
86
normal! zo
97
normal! zo
let s:l = 40 - ((14 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
40
normal! 034|
wincmd w
argglobal
edit templates/keeptrack/track.html
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal binary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=:0,(s,u0,U1,g0,t0
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
set foldtext=MyFoldText()
setlocal foldtext=MyFoldText()
setlocal formatexpr=
setlocal formatoptions=qrn1
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetCoffeeHtmlIndent(v:lnum)
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(3)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=2
setlocal tags=~/workspace/appengine-django-skeleton/.git/htmldjango.tags,~/workspace/appengine-django-skeleton/.git/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 30 - ((7 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
30
normal! 0117|
wincmd w
argglobal
edit templates/keeptrack/index.html
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal binary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=:0,(s,u0,U1,g0,t0
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
set foldtext=MyFoldText()
setlocal foldtext=MyFoldText()
setlocal formatexpr=
setlocal formatoptions=qrn1
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetCoffeeHtmlIndent(v:lnum)
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(4)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=2
setlocal tags=~/workspace/appengine-django-skeleton/.git/htmldjango.tags,~/workspace/appengine-django-skeleton/.git/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 022|
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 3 + 29) / 58)
exe 'vert 1resize ' . ((&columns * 88 + 102) / 205)
exe '2resize ' . ((&lines * 51 + 29) / 58)
exe 'vert 2resize ' . ((&columns * 88 + 102) / 205)
exe '3resize ' . ((&lines * 28 + 29) / 58)
exe 'vert 3resize ' . ((&columns * 116 + 102) / 205)
exe '4resize ' . ((&lines * 26 + 29) / 58)
exe 'vert 4resize ' . ((&columns * 116 + 102) / 205)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=83 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
