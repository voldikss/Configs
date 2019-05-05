" ========================================================================
" Introduction:
"    -> Author: voldikss
"    -> Blog: https://voldikss.github.io
"    -> GitHub: https://github.com/voldikss
" Todo:
"    -> 不同折叠之间的缩进级别，要加大
" ========================================================================

" PluginLoad: [[[1
call plug#begin('~/.vim/plugged')
" Languages [[[2
" Reference: https://github.com/sheerun/vim-polyglot/blob/master/README.md
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['c', 'cpp']}
" Plug 'chrisbra/csv.vim', {'for': 'csv'}
Plug 'cpiger/NeoDebug', {'for':['c', 'cpp']}
Plug 'godlygeek/tabular', {'for': 'markdown'}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'iamcco/markdown-preview.nvim', {'for':'markdown', 'do': {-> mkdp#util#install()}, 'frozen': 1}
Plug 'dhruvasagar/vim-table-mode',{'for': 'markdown', 'do': ':TableFormat'}
Plug 'rstacruz/sparkup', {'for':'html'}
Plug 'othree/html5.vim', {'for':'html'}
Plug 'jaxbot/browserlink.vim', {'for': 'html'}
Plug 'alvan/vim-closetag', {'for': ['html', 'xml']}
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
Plug 'MTDL9/vim-log-highlighting', {'for': 'log'}
Plug 'vim-python/python-syntax', {'for':'python'}
Plug 'numirias/semshi', {'for':'python', 'do': ':UpdateRemotePlugins'}
Plug 'lervag/vimtex', {'for': 'tex'}
Plug 'cespare/vim-toml', {'for': 'toml'}
Plug 'voldikss/vim-mma', {'for':'mma'}
Plug 'aperezdc/vim-template', {'on': 'Template'}
" Completion [[[2
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile', 'frozen':1}
Plug 'Shougo/neco-vim', {'for': 'vim'}
Plug 'neoclide/coc-neco', {'for': 'vim'}
" Style [[[2
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree', {'on': ['NERDTreeToggle', 'NERDTreeCWD']}
Plug 'Xuyuanp/nerdtree-git-plugin', {'on':['NERDTreeToggle', 'NERDTreeCWD']}
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', {'on':['NERDTreeToggle', 'NERDTreeCWD']}
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'simnalamburt/vim-mundo', {'on': 'MundoToggle'}
Plug 'kshenoy/vim-signature'
Plug 'mattesgroeger/vim-bookmarks'
Plug 'guns/xterm-color-table.vim'
" Git [[[2
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'iamcco/sran.nvim', { 'do': { -> sran#util#install() } }
Plug 'iamcco/git-p.nvim'
Plug 'cohama/agit.vim'
Plug 'mattn/gist-vim', {'on': 'Gist'}
Plug 'mattn/webapi-vim'
" Enhancements [[[2
Plug 'skywind3000/asyncrun.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'Yggdroot/LeaderF'
Plug 'voldikss/vim-search-me'
Plug 'voldikss/vim-translate-me'
Plug 'ahonn/fileheader.nvim', {'on': ['AddFileHeader', 'UpdateFileHeader']}
Plug 'inkarkat/vim-mark', {'on': '<Plug>MarkSet'}
Plug 'inkarkat/vim-ingo-library'
Plug 'moll/vim-bbye'
Plug 'junegunn/vim-peekaboo'
Plug 'liuchengxu/vista.vim'
" Move [[[2
Plug 'easymotion/vim-easymotion'
Plug 'andymass/vim-matchup'
Plug 'tommcdo/vim-exchange'
Plug 'matze/vim-move'
Plug 'andrewradev/sideways.vim'
" Edit [[[2
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'bronson/vim-visual-star-search'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'foosoft/vim-argwrap'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'mg979/vim-visual-multi', {'on': '<Plug>VM-Find-Under'}
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'jceb/vim-textobj-uri'
Plug 'reedes/vim-textobj-sentence'
Plug 'michaeljsmith/vim-indent-object'
Plug 'jeetsukumaran/vim-pythonsense'
Plug 'wellle/targets.vim'
" Misc [[[2
Plug 'yianwillis/vimcdoc'
Plug 'tweekmonster/startuptime.vim', {'on': 'StartupTime'}
call plug#end()
" General: [[[1
" file & directory & format [[[2
set history=2000
set pumheight=15
set updatetime=100
set modifiable
set autoread
set autowrite
set nobackup
set noswapfile
set nowritebackup
set undodir=~/.vim/.cache/undo_dir/
set undofile
set lazyredraw
set isfname-==
set encoding=utf-8
set fileencodings=utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileformats=unix,dos,mac
set nrformats=
set hidden
set fileignorecase
set formatoptions+=m
set formatoptions+=B
" key [[[2
set timeout
set ttimeout
set timeoutlen=500
set ttimeoutlen=20
set mouse=a
set mousehide
set selectmode=mouse
set clipboard=
set backspace=2
set backspace=eol,start,indent
set whichwrap=b,s,<,>,[,]
" style [[[2
colorscheme molokai
set termguicolors
set guicursor=
set signcolumn=yes
set pumheight=15
set title
set ruler
set showcmd
set noshowmode
set cursorline
set laststatus=2
set shortmess+=c
set scrolloff=6
set wrap
" match & search [[[2
set showmatch
set matchtime=1
set matchpairs+=<:>
set matchpairs+=《:》
set matchpairs+=（:）
set matchpairs+=【:】
set matchpairs+=“:”
set matchpairs+=‘:’
set hlsearch
set incsearch
set wrapscan
set ignorecase
set smartcase
" tab & space & indent [[[2
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set shiftround
set relativenumber number
set foldlevel=99
set conceallevel=0
set autoindent
set smartindent
" command window [[[2
set wildmenu
set wildmode=longest,full
set wildignorecase
set wildignore+=.stversions,*.pyc,*.spl,*.o,*.out,*~,%*
set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store
set wildignore+=__pycache__,*.egg-info
" complete [[[2
set dictionary+=~/.vim/dict/dictionary.txt
" set common variable[[[2
let g:vim_indent_cont = &sw
let g:autoformat_enabled = 0

if has('win32') || has('win64') || has('win32unix')
    let g:python3_host_prog='D:/Applications/Python36/python.exe'
else
    let g:python3_host_prog='/usr/bin/python3'
endif
" Keymap: [[[1
let mapleader   = ';'
let g:mapleader = ';'
" ClearnSearchHighlight:  [[[2
inoremap <silent> <esc> <Esc>:noh<CR>
nnoremap <silent> <esc> <Esc>:noh<CR>
" General: [[[2
noremap  H  ^
noremap  L  $
"cannot use noremap
nmap     M  %
noremap  U  <C-R>
noremap  '  `
inoremap jj <Esc>
inoremap jk <Esc>
vnoremap <  <gv
vnoremap >  >gv
noremap <C-U> kkkkkkkkkkkkkkkkkkkkk
noremap <C-D> jjjjjjjjjjjjjjjjjjjjj
" Jump: [[[2
noremap <C-j>      <C-]>
noremap <C-W><C-j> <C-W><C-]>
noremap <C-k>      K
" Search: [[[2
nnoremap <silent> n  nzz
nnoremap <silent> N  Nzz
nnoremap <silent> *  *zz
nnoremap <silent> #  #zz
" BufferOperation: [[[2
nmap     <silent> -         :Explore<CR>
nnoremap <silent> <C-h>     :bprev<CR>
tnoremap <silent> <C-h>     <C-\><C-n>:bprev<CR>
nnoremap <silent> <C-l>     :bnext<CR>
tnoremap <silent> <C-l>     <C-\><C-n>:bnext<CR>
noremap  <silent> <Leader>d :Bdelete!<CR>
" WindowOperation: [[[2
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l
inoremap <M-h> <Esc><C-w>h
inoremap <M-j> <Esc><C-w>j
inoremap <M-k> <Esc><C-w>k
inoremap <M-l> <Esc><C-w>l
tnoremap <M-h> <C-\><C-n><C-w>h
tnoremap <M-j> <C-\><C-n><C-w>j
tnoremap <M-k> <C-\><C-n><C-w>k
tnoremap <M-l> <C-\><C-n><C-w>l
" WindowSize: [[[2
noremap <M-up>    <C-w>+
noremap <M-down>  <C-w>-
noremap <M-left>  <C-w>5<
noremap <M-right> <C-w>5>
" TabOperation: [[[2
noremap  <silent> <C-t> <Esc>:tabnew<CR>
noremap! <silent> <C-t> <Esc>:tabnew<CR>
nnoremap <silent> gj :tabnext<CR>
nnoremap <silent> gk :tabprevious<CR>
" TextCopy: [[[2
nnoremap Y y$
nnoremap <Leader>y "+yy
vnoremap <Leader>y "+y
nnoremap <Leader>Y "+y$
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
noremap  <silent> <Leader>sa <Esc>ggVG
vnoremap <silent> <C-c> "+y
" InsertMode: move [[[2
inoremap <C-k> <Esc>ka
inoremap <C-j> <Esc>ja
inoremap <C-h> <Esc>ha
inoremap <C-l> <Esc>la
inoremap <C-b> <Esc>bi
inoremap <C-f> <Esc>ea
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-o> <Esc>o
inoremap <M-o> <Esc>O
inoremap <C-d> <Esc>ddi
inoremap <C-c> <Esc>C
" InsertMode: ;* [[[2
inoremap ;; <End>;
inoremap ;, <End>,
inoremap ;a <Home>
inoremap ;e <End>
inoremap ;h <Left>
inoremap ;j <Down>
inoremap ;k <Up>
inoremap ;l <Right>
inoremap ;o <Esc>o
inoremap ;O <Esc>O
inoremap ;u <C-u>
inoremap ;c <Esc>C
inoremap ;i <Esc>I
" SaveAndQuit: [[[2
nnoremap <silent> <Leader>w :wa<CR>
nnoremap <silent> <Leader>q :q<CR>
nnoremap <silent> <Leader>Q :qa!<CR>
nnoremap <silent> Q         :qa!<CR>
" CommandMode: [[[2
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <S-Left>
cnoremap <C-f> <S-Right>
" TerminalMode: [[[2
tnoremap <Esc>  <C-\><C-n>
if has('win32') || has('win64')
    nnoremap <silent> <Leader>n :vert term<CR>
    nnoremap <silent> ,n        :term<CR>
else
    nnoremap <silent> <Leader>n :vsplit term://zsh<CR>
    nnoremap <silent> ,n        :edit term://zsh<CR>
endif
" Customized function [[[2
noremap  <silent> <F4>         <Esc>:call FileExplore()<CR>
noremap  <silent> <F5>         <Esc>:call QuickRun()<CR>
noremap! <silent> <F5>         <Esc>:call QuickRun()<CR>
noremap  <silent> <Leader>x    <Esc>:call QuickRun()<CR>
noremap  <silent> <F6>         <Esc>:call Autoformat()<CR>
noremap! <silent> <F6>         <Esc>:call Autoformat()<CR>
nnoremap <expr>   <CR>         <SID>NormalMapForEnter() . "\<Esc>"
inoremap <expr>   <CR>         <SID>InsertMapForEnter()
inoremap <expr>   <Leader><CR> <SID>MapForSemicolonEnter()
inoremap <expr>   <Leader>p    <SID>MapForSemicolonP()
" Autocmd: [[[1
augroup AutocmdGroup
    autocmd!
" ParenthesisColor: [[[2
    autocmd VimEnter,BufWinEnter *
        \ if index(['html', 'htmldjango', 'tex', 'mma'], &filetype) < 0 |
            \ syntax match paren1 /[{}]/   | hi paren1 guifg=#FF00FF |
            \ syntax match paren2 /[()]/   | hi paren2 guifg=#DF8700 |
            \ syntax match paren3 /[<>]/   | hi paren3 guifg=#0087FF |
            \ syntax match paren4 /[\[\]]/ | hi paren4 guifg=#00FF5F |
        \ endif
" SourceVimrc: [[[2
    autocmd BufWritePost ~/.vimrc nested source $MYVIMRC
" DisableAutoComment: [[[2
    autocmd FileType * set formatoptions-=cro
" LineNumber: [[[2
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
" EqualWindowsSize: [[[2
    autocmd VimResized * exec "normal \<C-w>="
" LastPosition: [[[2
    autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
            \ exe "normal! g'\"" |
        \ endif
" KeywordHighlight: [[[2
    autocmd Syntax *
        \ call matchadd('Todo',  '\W\zs\(TODO\|Todo\|todo\|FIXME\|CHANGED\|XXX\|BUG\|HACK\)') |
        \ call matchadd('Todo',  '\W\zs\(NOTE\|Note\|INFO\|IDEA\|NOTICE\)') |
        \ call matchadd('Debug', '\W\zs\(Debug\|DEBUG\)') |
" AutoChdir: [[[2
    autocmd BufEnter * silent! lcd %:p:h
" GitIgnore: [[[2
    autocmd BufNewFile .gitignore InitGitignore
" Plugins: [[[2
    " auto-pairs [[[3
    autocmd FileType html let b:AutoPairs =
        \ {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''",'{%':'%}', '<!--':'-->'}
    autocmd FileType javascript,css,c,cpp let b:AutoPairs =
        \ {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''",'/*':'*/'}
    autocmd FileType markdown let b:AutoPairs =
        \ {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''", '*':'*','~':'~'}
    autocmd FileType vim let b:AutoPairs =
        \ {'(':')', '[':']', '{':'}',"'":"'", "`":"`", '<':'>'}
    autocmd FileType tex let g:AutoPairs =
        \ {'(':')', '[':']', '{':'}',"'":"'", "`":"`", '<':'>', '$':'$', '$$':'$$'}
    " coc.nvim [[[3
    " Close preview window when completion is done.
    autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
    " coc-highlight
    autocmd CursorHold * silent call CocActionAsync('highlight')
    " vim-argwrap [[[3
    autocmd FileType vim let b:argwrap_line_prefix = '\'
    autocmd FileType vim let b:argwrap_tail_indent_braces = '('
    " vim-autoformat [[[3
    autocmd BufWrite * if g:autoformat_enabled | :call Autoformat<CR> | endif
    " vim-commentary [[[3
    autocmd FileType python,shell,coffee,crontab setlocal commentstring=#\ %s
    autocmd FileType java,c,cpp,json     setlocal commentstring=//\ %s
    " vim-matchup [[[3
    autocmd FileType vim let b:match_words =
        \ '\<fu\%[nction]\>:\<retu\%[rn]\>:\<endf\%[unction]\>,' .
        \ '\<\(wh\%[ile]\|for\)\>:\<brea\%[k]\>:\<con\%[tinue]\>:\<end\(w\%[hile]\|fo\%[r]\)\>,' .
        \ '\<if\>:\<el\%[seif]\>:\<en\%[dif]\>,' .
        \ '\<try\>:\<cat\%[ch]\>:\<fina\%[lly]\>:\<endt\%[ry]\>,' .
        \ '\<aug\%[roup]\s\+\%(END\>\)\@!\S:\<aug\%[roup]\s\+END\>'
    autocmd FileType python let b:match_words =
        \ '\<if\>:\<el\%[seif]\>,' .
        \ '\<for\>:\<continue\>:\<break\>,' .
        \ '\<while\>:\<continue\>:\<break\>,' .
        \ '\<def\>:\<return\>,' .
        \ '\<try\>:\<except\>:\<finally\>'
    " \< \> 标志单词的边界，此处 ; 左边与别的字符直接接触
    autocmd FileType javascript let b:match_words =
        \ '=:;,' .
        \ '\<if\>:\<else\>,' .
        \ '\<for\>:\<continue\>:\<break\>,' .
        \ '\<while\>:\<continue\>:\<break\>,' .
        \ '\<function\>:\<return\>,' .
        \ '\<switch\>:\<case\>:\<default\>,' .
        \ '\<\\\*\>:\<\*\\\>'
    autocmd FileType c,cpp let b:match_words =
        \ '=:;,' .
        \ '\<if\>:\<else\>,' .
        \ '\<for\>:\<continue\>:\<break\>,' .
        \ '\<do\>:\<while\>:\<continue\>:\<break\>,' .
        \ '\<switch\>:\<case\>:\<default\>,' .
        \ '\<\\\*\>:\<\*\\\>'
augroup END
"
" Command: [[[1
" Commons: [[[2
command! -nargs=+ Grep        call <SID>Grep(<q-args>)
command! -nargs=+ -complete=command TabMessage call TabMessage(<q-args>)
command! -nargs=1 QuickRunPythonInterpretor  let g:asyncrun_python_interpretor=<q-args>
" GitOperation: [[[2
command! Gap  Git add -p
command! Cd   Gcd
command! Gd   Gvdiff
command! Gl   Git lg
command! Gs   Gstatus
command! Gc   Gcommit -v
command! Gca  Gcommit -a -v
command! Gcaa Gcommit --amend -a -v
command! Gco  execute "AsyncRun git checkout ."
command! Grm  Gremove
command! Gmv  Gmove
" VimPlug: [[[2
command! PI  PlugInstall
command! PU  PlugUpdate
command! PUU PlugUpgrade
command! PS  PlugStatus
command! PC  PlugClean
" Function: [[[1
" Autoformat: format code
function! Autoformat()
    if &filetype == 'markdown'
        TableFormat
    else
        call CocAction('format')
    endif
    exec 'w'
endfunction
" InitGitignore: default gitignore [[[2
function! InitGitignore()
    if &filetype ==# 'gitignore'
        let l:ignore = [
            \ 'test.*',
            \ 'tmp.*',
            \ '.tags',
            \ 'tags',
            \ 'tags-cn',
            \ 'node_modules',
            \ '*.pyc',
            \ '*.o',
            \ '*.out',
            \ '*.log',
            \ '.idea/',
            \ '/.idea',
            \ 'build/',
            \ '__pycache__'
        \ ]
        let l:lines = line('$')
        normal O
        call append(0, l:ignore)
    endif
endfunction
" QuickRun: one key to run [[[2
function! QuickRun()
    exec 'w'
    if &filetype == 'html' || &filetype == 'htmldjango'
        call BrowserOpen(expand("%:p"))
    elseif &filetype == 'markdown'
        MarkdownPreview
    elseif &filetype == 'tex'
        VimtexCompile
    elseif &filetype == 'c'
        if has('unix')
            AsyncRun gcc -g % && ./a.out
        else
            AsyncRun gcc -g "$(VIM_FILEPATH)" -o "a.exe" && "$(VIM_FILEDIR)/a.exe"
        endif
    elseif &filetype == 'cpp'
        if has('unix')
            AsyncRun gcc -g % && ./a.out
        else
            AsyncRun gcc -g "$(VIM_FILEPATH)" -o "a.exe" && "$(VIM_FILEDIR)\a.exe"
        endif
    elseif &filetype == 'sh'
        AsyncRun bash %
    elseif &filetype == 'python'
        if exists('g:asyncrun_python_interpretor')
            exec 'AsyncRun ' . '-raw ' .  g:asyncrun_python_interpretor . ' %'
            return
        endif
        if has("unix")
            AsyncRun -raw python3 %
        else
            AsyncRun -raw python "$(VIM_FILEPATH)"
        endif
    else
        echo "Not supported filetype:" . " " . &filetype
    endif
endfunction
" FileExplore: open cwd in file explore [[[2
function! FileExplore()
    let l:path = expand(getcwd())
    call BrowserOpen(l:path)
endfunction
" BrowserOpen: open file or url [[[2
function! BrowserOpen(obj)
    " windows(mingw)
    if has('win32') || has('win64') || has('win32unix')
        let l:cmd = 'rundll32 url.dll,FileProtocolHandler ' . a:obj
    elseif has('mac') || has('macunix') || has('gui_macvim') || system('uname') =~? '^darwin'
        let l:cmd = 'open ' . a:obj
    elseif executable('xdg-open')
        let l:cmd = 'xdg-open ' . a:obj
    else
        echoerr "No browser found, please contact the developer."
    endif

    exec 'AsyncRun -post=cclose' . ' ' . l:cmd
endfunction
" TabMessage: capture command output [[[2
function! TabMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  if empty(message)
    echoerr "no output"
  else
    new
    setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted nomodified
    silent put=message
  endif
endfunction
" SetupCommandAbbrs: [[[2
function! s:SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction
" NormalMapForEnter: <CR> [[[2
function! s:NormalMapForEnter()
    if &filetype ==# 'quickfix'
        return '\<CR>'
    elseif index(['c', 'cpp', 'cs', 'java', 'css', 'scss'],&filetype) >= 0
        let l:line = getline('.')
        if l:line != '' && l:line !~ '^\s\+$' && index([';', '{', '(', '\'], l:line[-1:]) < 0
            return 'A;'
        endif
    else
        return '\<Nop>' " prevent entering to the next line
    endif
endfunction
" InsertMapForEnter: <CR> [[[2
function! s:InsertMapForEnter()
    if pumvisible()
        return "\<C-y>"
    elseif strcharpart(getline('.'),getpos('.')[2]-1,1) == '}'
        return "\<CR>\<Esc>O"
    elseif strcharpart(getline('.'),getpos('.')[2]-1,2) == '</'
        return "\<CR>\<Esc>O"
    else
        return "\<CR>"
    endif
endfunction
" MapForSemicolonEnter: ;<CR> [[[2
function! s:MapForSemicolonEnter()
    if (getline('.')[-1:] != ';') &&
        \(index(['c', 'cpp', 'cs', 'java', 'css', 'scss'],&filetype) >= 0)
        return "\<End>;\<CR>"
    else
        return "\<Esc>o"
endfunction
" MapForSemicolonP: ;p [[[2
function! s:MapForSemicolonP()
    if index(['bash', 'c', 'cpp', 'cs', 'javascript', 'javascript.jsx', 'java'],&filetype) >= 0
        return "\<End>{}\<Left>\<CR>\<Esc>O"
    else
        return ";p"
    endif
endfunction
" Random: [[[2
function! s:Rand(max) abort
  if has("reltime")
    let l:timerstr=reltimestr(reltime())
    let l:number=split(l:timerstr, '\.')[1]+0
  elseif has("win32") && &shell =~ 'cmd'
    let l:number=system("echo %random%")+0
  else
    " best effort, bash and zsh provide $RANDOM
    " cmd.exe on windows provides %random%, but expand()
    " does not seem to be able to expand this correctly.
    " In the worst case, this always returns zero
    let l:number=expand("$RANDOM")+0
  endif
  return l:number % a:max
endfunction
" Grep: [[[2
function! s:Grep(string)
    if executable('rg')
        execute "AsyncRun! rg -n " . a:string . " * "
        " execute "AsyncRun! -post=copen\ 8 rg -n " . a:string . " * "
    elseif has('win32') || has('win64')
        execute "AsyncRun! -cwd=<root> findstr /n /s /C:" . a:string
    else
        execute "AsyncRun! -cwd=<root> grep -n -s -R " . a:string . " * " . "--exclude='*.so' --exclude='.git' --exclude='.idea' --exclude='.cache' --exclude='.IntelliJIdea' --exclude='*.py[co]'"
    endif
endfunction
" Abbreviate: [[[1
call s:SetupCommandAbbrs('As', 'AsyncRun')
call s:SetupCommandAbbrs('Ass', 'AsyncStop')
call s:SetupCommandAbbrs('CC', 'CocConfig')
call s:SetupCommandAbbrs('CI', 'CocInstall')
call s:SetupCommandAbbrs('CM', 'CocCommand')
call s:SetupCommandAbbrs('CU', 'CocUninstall')
call s:SetupCommandAbbrs('CL', 'CocList')
call s:SetupCommandAbbrs('CR', 'CocRestart')
call s:SetupCommandAbbrs('D', 'Dict')
call s:SetupCommandAbbrs('Gap', 'Git add -p')
call s:SetupCommandAbbrs('Cd', 'Gcd')
call s:SetupCommandAbbrs('Gd', 'Gvdiff')
call s:SetupCommandAbbrs('Gl', 'Git lg')
call s:SetupCommandAbbrs('Gs', 'Gstatus')
call s:SetupCommandAbbrs('Gc', 'Gcommit -v')
call s:SetupCommandAbbrs('Gca', 'Gcommit -a -v')
call s:SetupCommandAbbrs('Gcaa', 'Gcommit --amend -a -v')
call s:SetupCommandAbbrs('Gco', 'AsyncRun git checkout .')
call s:SetupCommandAbbrs('Gpush', 'AsyncRun git push')
call s:SetupCommandAbbrs('Gpull', 'AsyncRun git pull')
call s:SetupCommandAbbrs('Grm', 'Gremove')
call s:SetupCommandAbbrs('Gmv', 'Gmove')

call s:SetupCommandAbbrs('as', 'AsyncRun')
call s:SetupCommandAbbrs('ass', 'AsyncStop')
call s:SetupCommandAbbrs('cc', 'CocConfig')
call s:SetupCommandAbbrs('ci', 'CocInstall')
call s:SetupCommandAbbrs('cm', 'CocCommand')
call s:SetupCommandAbbrs('cu', 'CocUninstall')
call s:SetupCommandAbbrs('cl', 'CocList')
call s:SetupCommandAbbrs('cr', 'CocRestart')
call s:SetupCommandAbbrs('d', 'Dict')
call s:SetupCommandAbbrs('gap', 'Git add -p')
call s:SetupCommandAbbrs('gd', 'Gvdiff')
call s:SetupCommandAbbrs('gl', 'Git lg')
call s:SetupCommandAbbrs('gs', 'Gstatus')
call s:SetupCommandAbbrs('gc', 'Gcommit -v')
call s:SetupCommandAbbrs('gca', 'Gcommit -a -v')
call s:SetupCommandAbbrs('gcaa', 'Gcommit --amend -a -v')
call s:SetupCommandAbbrs('gco', 'AsyncRun git checkout .')
call s:SetupCommandAbbrs('gpush', 'AsyncRun git push')
call s:SetupCommandAbbrs('gpull', 'AsyncRun git pull')
call s:SetupCommandAbbrs('grm', 'Gremove')
call s:SetupCommandAbbrs('gmv', 'Gmove')
" Nvim-Qt: [[[1
if exists('g:GuiLoaded')
    inoremap <S-CR> <Esc>o
    inoremap <C-CR> <Esc>O
    GuiFont! Monaco:h11
    GuiTabline 0
    GuiPopupmenu 0
    let g:GuiWindowMaximized = 1
endif
" PluginConfig: [[[1
" airline [[[2
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep      = '⮀'
let g:airline_left_alt_sep  = '⮁'
let g:airline_right_sep     = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '⭡'
let g:airline_powerline_fonts = 1

" Random airline theme
let g:airline_themes_list = ['aurora', 'badwolf', 'dark', 'light', 'xtermlight']
let g:randomn = <SID>Rand(len(g:airline_themes_list))

" 加载的正是在使用的vimrc而非用来备份的vimrc
" 确保 airline 要已经加载才能用 AirlineTheme 命令，否则不行，如 `vim ~/.vimrc` 会出错
if expand("%:t") == '.vimrc' && expand("%:p:h") ==# expand("~") && exists("g:airline_theme")
    " 保存 vimrc 的时候会自动source, 用下面的方法会报错，所以这里用命令
    " 但是不能只用这个，因为vim启动的时候并没有加载 AirlineTheme 命令
    exec "AirlineTheme " . g:airline_themes_list[g:randomn]
else
    let g:airline_theme = g:airline_themes_list[g:randomn]
endif

" buffer 编号显示
let g:airline#extensions#tabline#buffer_nr_show = 1
" tab 编号显示
" let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#enabled       = 1
let g:airline#extensions#tabline#left_sep      = '⮀'
let g:airline#extensions#tabline#left_alt_sep  = '⮁'
let g:airline#extensioin#tabline#right_sep     = '⮂'
let g:airline#extensioin#tabline#right_alt_sep = '⮃'
let g:airline#extensions#tabline#formatter     = 'unique_tail'
" AsyncRun [[[2
nnoremap <silent> <Leader><Space> :call asyncrun#quickfix_toggle(8)<CR>
" automatically open quickfix
let g:asyncrun_open = 8
" 看到 Python 实时输出
let $PYTHONUNBUFFERED=1
" airline 集成
let g:asyncrun_status = ''
if exists("*airline#section#create_right")
    let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
endif
" auto-pairs [[[2
" 解除一系列映射键
let g:AutoPairsShortcutJump       = 'Disable'
let g:AutoPairsShortcutBackInsert = 'Disable'
let g:AutoPairsShortcutToggle     = 'Disable'
let g:AutoPairsMapCR              = 'Disable'
" 防止 C-h 被映射为 <BS>
let g:AutoPairsMapCh    = 0
let g:AutoPairsMapSpace = 0
" coc.nvim [[[2
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" snippets jump
let g:coc_snippet_next = '<tab>'

" 语法检查跳转
nmap <silent> <M-n> <Plug>(coc-diagnostic-next)
nmap <silent> <M-p> <Plug>(coc-diagnostic-prev)
" 定义声明实现跳转
nmap <silent> <Leader>cd <Plug>(coc-definition)
nmap <silent> <Leader>ci <Plug>(coc-implementation)
nmap <silent> <Leader>cr <Plug>(cc-references)
nmap <silent> <Leader>cf <Plug>(coc-fix-current)

" coc-git
nmap <expr> <C-up>   &diff==1 ? '[c' : '<Plug>(coc-git-prevchunk)'
nmap <expr> <C-down> &diff==1 ? ']c' : '<Plug>(coc-git-nextchunk)'
nnoremap <Leader>hs :CocCommand git.chunkStage<CR>
nnoremap <Leader>hu :CocCommand git.chunkUndo<CR>

" Install coc extensions
if exists("*coc#add_extension")
    call coc#add_extension(
        \ 'coc-dictionary',
        \ 'coc-tag',
        \ 'coc-word',
        \ 'coc-emoji',
        \ 'coc-omni',
        \ 'coc-python',
        \ 'coc-tsserver',
        \ 'coc-css',
        \ 'coc-json',
        \ 'coc-html',
        \ 'coc-snippets',
        \ 'coc-emmet',
        \ 'coc-vimtex',
        \ 'coc-git',
        \ 'coc-highlight'
        \ )
endif
" fileheader.nvim [[[2
let g:fileheader_auto_add = 0
let g:fileheader_auto_update = 0
let g:fileheader_author='voldikss'
let g:fileheader_default_email = 'dyzplus@gmail'
let g:fileheader_show_email = 0
let g:fileheader_by_git_config = 1
let g:fileheader_new_line_at_end = 1
let g:fileheader_last_modified_by = 1
let g:fileheader_last_modified_time = 1
nnoremap <silent> <F1> :UpdateFileHeader<CR>
vnoremap <silent> <F1> <Esc>:UpdateFileHeader<CR>
inoremap <silent> <F1> <Esc>:UpdateFileHeader<CR>
" git-p.nvim [[[2
nmap <silent> <leader>gv <Plug>(git-p-diff-preview)
let g:gitp_blame_format = ""
let g:gitp_add_sign = '+'
let g:gitp_modify_sign = '~'
let g:gitp_delete_top_sign = '‾'
let g:gitp_delete_bottom_sign = '_'
let g:gitp_delete_top_and_bottom_sign = '-'

highlight GitPAdd                guifg=#009900 guibg=237
highlight GitPModify             guifg=#ffff00 guibg=237
highlight GitPDeleteTop          guifg=#ff2222 guibg=237
highlight GitPDeleteButtom       guifg=#ff2222 guibg=237
highlight GitPDeleteTopAndBottom guifg=#ff2222 guibg=237
" goyo.vim [[[2
let g:goyo_width = '50%'
let g:goyo_height = '100%'
let g:goyo_linenr = 1
" indentLine [[[2
let g:indentLine_enabled = 1
let g:indentLine_color_term = 238
" LeaderF [[[2
let g:Lf_ShortcutF = '<Leader>f'
let g:Lf_ShortcutB = '<Leader>b'
noremap <silent> <Leader>t :LeaderfBufTagAll<CR>
noremap <silent> <Leader>r :Leaderf rg<CR>

let g:Lf_StlSeparator   = {'left': '', 'right': '', 'font': ''}
let g:Lf_RootMarkers    = ['.project', '.root', '.svn', '.git']
let g:Lf_MruFileExclude = ['*.so','*.py[c0]','*.exe','*.sw?']
let g:Lf_WildIgnore = {
    \ 'dir': ['.svn','.git','.hg','.cache','.idea','.android','.gradle','.IntelliJIdea*'],
    \ 'file': ['*.sw?','~$*','*.exe','*.o','*.so','*.py[co]']
    \ }
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight         = 0.30
let g:Lf_CacheDirectory       = expand('~/.vim/.cache')
let g:Lf_ShowRelativePath     = 1
let g:Lf_HideHelp             = 1
let g:Lf_ShowHidden           = 1
let g:Lf_PreviewResult        = {'Function':0, 'BufTag':0}
let g:Lf_IndexTimeLimit       = 10
let g:Lf_Ctags                = "/usr/local/bin/ctags"
" let g:Lf_PreviewCode = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_StlSeparator   = {'left': '⮀', 'right': '⮂', 'font': ''}
" markdown-preview.nvim [[[2
let g:mkdp_auto_close = 0
" NeoDebug [[[2
let g:neodbg_keymap_continue           = '<F5>'   " run or continue
let g:neodbg_keymap_toggle_breakpoint  = '<F9>'   " toggle breakpoint on current line
let g:neodbg_keymap_step_into          = '<F10>' " step into
let g:neodbg_keymap_terminate_debugger = '<F12>'  " terminate debugger
" following are unuseful
let g:neodbg_keymap_run_to_cursor      = '<Nop1>' " run to cursor (tb and c)
let g:neodbg_keymap_jump               = '<Nop2>' " set next statement (tb and jump)
let g:neodbg_keymap_next               = '<Nop3>'  " next
let g:neodbg_keymap_step_out           = '<Nop4>' " setp out
let g:neodbg_keymap_print_variable     = '<Nop5>' " view variable under the cursor
let g:neodbg_keymap_stop_debugging     = '<Nop6>' " stop debugging (kill)
let g:neodbg_keymap_toggle_console_win = '<Nop7>' " toggle console window
noremap <silent> <F8> <Esc>:NeoDebug ./a.out<CR>
" NERDTree [[[2
let NERDTreeShowLineNumbers = 1
let NERDTreeAutoCenter = 1
let NERDTreeShowHidden = 1
let NERDTreeWinSize = 28
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup = 1
let NERDTreeIgnore = [
            \ '\.git$', '\.hg$', '\.svn$', '\.stversions$', '\.pyc$', '\.svn$','\~$',
	        \ '\.DS_Store$', '\.sass-cache$', '__pycache__$', '\.egg-info$', '\.cache$'
	        \ ]
let NERDTreeShowBookmarks = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" 如果只剩下NERDTree则关闭vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 切换 NERDTree
noremap  <silent> <F2> <Esc>:call NERDTreeToggler()<CR>
noremap! <silent> <F2> <Esc>:call NERDTreeToggler()<CR>
function! NERDTreeToggler()
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
    exe ":NERDTreeClose"
  else
    if (expand("%:t") != '')
      exe ":NERDTreeCWD"
    else
      exe ":NERDTreeToggle"
    endif
  endif
endfunction
" nerdtree-git-plugin [[[2
let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : '☒',
            \ "Unknown"   : "?"
            \ }
" vim-nerdtree-syntax-highlight [[[2
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb
" python-syntax [[[2
let g:python_highlight_all = 1
" sideways.vim [[[2
nnoremap <silent> <C-left>  :SidewaysLeft<CR>
nnoremap <silent> <C-right> :SidewaysRight<CR>
" sparkup [[[2
let g:sparkupExecuteMapping = '<C-i>'
" vim-argwrap [[[2
noremap <silent> <Leader>aw :ArgWrap<CR>
" vim-bookmarks [[[2
" 重新定义按键映射
let g:bookmark_no_default_key_mappings = 1
nmap <silent> ,bm <Plug>BookmarkToggle
nmap <silent> ,bi <Plug>BookmarkAnnotate
nmap <silent> ,ba <Plug>BookmarkShowAll
nmap <silent> ,bn <Plug>BookmarkNext
nmap <silent> ,bp <Plug>BookmarkPrev
nmap <silent> ,bc <Plug>BookmarkClearAll
let g:bookmark_sign            = '⚑'
let g:bookmark_highlight_lines = 1
" 缓存地址
let g:bookmark_auto_save_file = $HOME . '/.vim/.cache/vim_bookmarks'
" vim-cpp-enhanced-highlight [[[2
let g:cpp_class_scope_highlight                  = 1
let g:cpp_member_variable_highlight              = 1
let g:cpp_class_decl_highlight                   = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight                     = 1
" vim-easy-align [[[2
xmap <silent> ga <Plug>(EasyAlign)
nmap <silent> ga <Plug>(EasyAlign)
" vim-easymotion [[[2
map  <Plug>NoPrefix <Plug>(easymotion-prefix)
map  ,e      <Plug>(easymotion-bd-w)
nmap ,e      <Plug>(easymotion-overwin-w)
map  ,f      <Plug>(easymotion-bd-f)
nmap ,f      <Plug>(easymotion-overwin-f)
map  ,l      <Plug>(easymotion-bd-jk)
nmap ,l      <Plug>(easymotion-overwin-line)
" vim-exchange [[[2
nmap <silent> cx  <Plug>(Exchange)
xmap <silent> X   <Plug>(Exchange)
nmap <silent> cxc <Plug>(ExchangeClear)
nmap <silent> cxx <Plug>(ExchangeLine)
" vim-gutentags [[[2
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project','.idea']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 默认会在当前文件夹产生 .tags 文件
" 将自动生成的 tags 文件全部放入 ~/.vim/tags 目录中，避免污染工程目录
if has('unix')
    let s:vim_tags = expand('~/.vim/.cache/tags')
    let g:gutentags_cache_dir = s:vim_tags
endif

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args =  ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" vim-javascript [[[2
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow  = 1
" vim-mark [[[2
" 和 visual-star-search 有 <Leader>* 冲突(MarkSet)
" 以及其他冲突
" 解除 <Leader>r
map <Plug>DisableMarkRegex         <Plug>MarkRegex
" 解除 <Leader>/
map <Plug>DisableMarkSearchAnyNext <Plug>MarkSearchAnyNext
" 解除 <Leader>?
map <Plug>DisableMarkSearchAnyPrev <Plug>MarkSearchAnyPrev
" 解除 <Leader>n
map <Plug>DisableMarkClear         <Plug>MarkClear
" 解除 */#
map <Plug>DisableMarkSearchNext    <Plug>MarkSearchNext
map <Plug>DisableMarkSearchPrev    <Plug>MarkSearchPrev
" 重新定义映射
map ms                             <Plug>MarkSet
map mn                             <Plug>MarkSearchCurrentNext
map mp                             <Plug>MarkSearchCurrentPrev
map mc                             <Plug>MarkAllClear
" vim-markdown [[[2
" 代码块高亮
let g:vim_markdown_fenced_languages = ['python=py']
let g:vim_markdown_fenced_languages = ['javascript=js']
let g:vim_markdown_fenced_languages = ['c=c']
" 避免标志符号被隐藏
let g:vim_markdown_conceal             = 0
let g:vim_markdown_conceal_code_blocks = 0
let g:tex_conceal                      = ""
let g:vim_markdown_math                = 1
" vim-move [[[2
let g:move_map_keys    = 0
let g:move_auto_indent = 1
vmap <silent> J <Plug>MoveBlockDown
vmap <silent> K <Plug>MoveBlockUp
nmap <silent> J <Plug>MoveLineDown
nmap <silent> K <Plug>MoveLineUp
" vim-mundo [[[2
noremap  <silent> <F3> <Esc>:MundoToggle<CR>
noremap! <silent> <F3> <Esc>:MundoToggle<CR>
let g:mundo_width              = 30
let g:mundo_preview_height     = 10
let g:mundo_right              = 0
let g:mundo_preview_bottom     = 1
let g:mundo_auto_preview_delay = 10
" vim-startify [[[2
noremap <silent> <Space> <Esc>:Startify<CR>
" vim-table-mode [[[2
" for Markdown
let g:table_mode_corner = '|'
" vim-templates [[[2
let g:templates_directory            = ['~/.vim/templates']
let g:templates_no_autocmd           = 1
let g:templates_no_builtin_templates = 1
" vim-translate-me [[[2
nmap <silent>    ,t        <Plug>Translate
nmap <silent>    ,w        <Plug>TranslateW
nmap <silent>    ,r        <Plug>TranslateR
vmap <silent>    ,t        <Plug>TranslateV
vmap <silent>    ,w        <Plug>TranslateWV
vmap <silent>    ,r        <Plug>TranslateRV
let g:vtm_default_api = 'youdao'
" vimtex [[[2
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_mappings_enabled = 0
let g:vimtex_fold_enabled = 1
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_quickfix_autoclose_after_keystrokes = 1
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_compiler_latexmk_engines = {'_': '-xelatex'}
let g:vimtex_compiler_latexrun_engines = {'_': 'xelatex'}
" airline integration
" https://github.com/vim-airline/vim-airline/blob/master/doc/airline.txt#L1061
let g:airline#extensions#vimtex#enabled = 1
let g:airline#extensions#vimtex#left = "{"
let g:airline#extensions#vimtex#right = "}"
let g:airline#extensions#vimtex#main = ""
let g:airline#extensions#vimtex#sub_main = "m"
let g:airline#extensions#vimtex#sub_local = "l"
let g:airline#extensions#vimtex#compiled = "c₁"
let g:airline#extensions#vimtex#continuous = "c"
let g:airline#extensions#vimtex#viewer = "v"
" vim-visual-multi [[[2
" for plug on-demand
map <C-n>  <Plug>VM-Find-Under
let g:VM_leader             = ";"
let g:VM_default_mappings   = 0
let g:VM_maps               = {}
let g:VM_maps["Select All"] = '<Leader>A'
" vista.vim [[[2
nnoremap <silent> <F10> :Vista!!<CR>
" CheatSheet: [[[1
" J                 移动整行
" K                 移动整行
" H                 行首
" L                 行尾

" <C-j>             跳转函数定义
" <C-k>             跳转帮助
" <C-h>             切换buffer
" <C-l>             切换buffer
" <C-up>            Diff 跳转
" <C-down>          Diff 跳转
" <C-left>          交换单词
" <C-right>         交换单词
" <C-up>            <Plug>(coc-git-prevchunk)
" <C-down>          <Plug>(coc-git-nextchunk)

" <M-h>             窗口间移动光标
" <M-j>             窗口间移动光标
" <M-k>             窗口间移动光标
" <M-l>             窗口间移动光标
" <M-up>            调整窗口大小
" <M-down>          调整窗口大小
" <M-left>          调整窗口大小
" <M-right>         调整窗口大小
" <M-n>             <Plug>(coc-diagnostic-next)
" <M-p>             <Plug>(coc-diagnostic-next)

" <Leader>cd        <Plug>(coc-definition)
" <Leader>ci        <Plug>(coc-implementation)
" <Leader>cr        <Plug>(cc-references)
" <Leader>cf        <Plug>(coc-fix-current)

" <Leader>f        :LeaderfFile<CR>
" <Leader>t        :LeaderfBufTagAll<CR>
" <Leader>b        :LeaderfBufferAll<CR>
" <Leader>r        :Leaderf rg

" ms               <Plug>MarkSet
" mn               <Plug>MarkSearchCurrentNext
" mp               <Plug>MarkSearchCurrentPrev
" mc               <Plug>MarkAllClear

" cx               <Plug>(Exchange)
" X                <Plug>(Exchange)
" cxc              <Plug>(ExchangeClear)
" cxx              <Plug>(ExchangeLine)

" ,bm              <Plug>BookmarkToggle
" ,bi              <Plug>BookmarkAnnotate
" ,ba              <Plug>BookmarkShowAll
" ,bn              <Plug>BookmarkNext
" ,bp              <Plug>BookmarkPrev
" ,bc              <Plug>BookmarkClearAll

" ,e               <Plug>(easymotion-bd-w)
" ,e               <Plug>(easymotion-overwin-w)
" ,f               <Plug>(easymotion-bd-f)
" ,f               <Plug>(easymotion-overwin-f)
" ,l               <Plug>(easymotion-bd-jk)
" ,l               <Plug>(easymotion-overwin-line)

" <Leader>aw       <Esc>:ArgWrap<CR>
" ,t               <Plug>DictSearch

" vim:fdm=marker:fmr=[[[,]]]
