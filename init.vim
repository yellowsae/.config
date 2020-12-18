"  ___________________
" < YELLOWSEA__NEOVIM >
"  -------------------
"                        \                    ^    /^
"                         \                  / \  // \
"                          \   |\___/|      /   \//  .\
"                           \  /O  O  \__  /    //  | \ \           *----*
"                             /     /  \/_/    //   |  \  \          \   |
"                             @___@`    \/_   //    |   \   \         \/\ \
"                            0/0/|       \/_ //     |    \    \         \  \
"                        0/0/0/0/|        \///      |     \     \       |  |
"                     0/0/0/0/0/_|_ /   (  //       |      \     _\     |  /
"                  0/0/0/0/0/0/`/,_ _ _/  ) ; -.    |    _ _\.-~       /   /
"                              ,-}        _      *-.|.-~-.           .~    ~
"             \     \__/        `/\      /                 ~-. _ .-~      /
"              \____(oo)           *.   }            {                   /
"              (    (--)          .----~-.\        \-`                 .~
"              //__\\  \__ Ack!   ///.----..<        \             _ -~
"             //    \\               ///-._ _ _ _ _ _ _{^ - - - - ~
"
"

"  ___________________
" < YELLOWSEA__NEOVIM >
"  -------------------
"    \
"     \
"                |    .
"            .   |L  /|
"        _ . |\ _| \--+._/| .
"       / ||\| Y J  )   / |/| ./
"      J  |)'( |        ` F`.'/
"    -<|  F         __     .-<
"      | /       .-'. `.  /-. L___
"      J \      <    \  | | O\|.-'
"    _J \  .-    \/ O | | \  |F
"   '-F  -<_.     \   .-'  `-' L__
"  __J  _   _.     >-'  )._.   |-'
"  `-|.'   /_.           \_|   F
"    /.-   .                _.<
"   /'    /.'             .'  `\
"    /L  /'   |/      _.-'-\
"   /'J       ___.---'\|
"     |\  .--' V  | `. `
"     |/`. `-.     `._)
"        / .-.\
"  VK    \ (  `\
"         `.\
"


" ======================== MY NEOVIM========================
"
filetype plugin on
" 设置为双字宽显示，否则无法完整显示如:☆
set ambiwidth=double
set t_ut= " 防止vim背景颜色错误
set showmatch " 高亮匹配括号
set matchtime=1
set noshowmode " block mode display
set novisualbell noerrorbells
set report=0
set ignorecase
set cursorline "highlight current line
set noeb
set softtabstop=4
set shiftwidth=4
set nobackup
set autoread
set nocompatible
set nu "设置显示行号
set backspace=2 "能使用backspace回删
syntax on "语法检测
set ruler "显示最后一行的状态
set laststatus=2 "两行状态行+一行命令行
set ts=4
set expandtab
set autoindent "设置c语言自动对齐
set t_Co=256 "指定配色方案为256
" set mouse=a "设置可以在VIM使用鼠标
set selection=exclusive
" set selectmode=mouse,key
set tabstop=4 "设置TAB宽度
set history=1000 "设置历史记录条数
set shortmess=atl
set clipboard+=unnamed
set cmdheight=1
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
" set updatetime=300
set shortmess+=c
set signcolumn=yes
" reset cursor when vim exits
au VimLeave * set guicursor=a:ver25-blinkon0






" +================================ 可视化缩进 =====================================+ "
" set notermguicolors
let g:sonokai_style = 'shusia'
" let g:sonokai_enable_italic = 1
" let g:sonokai_disable_italic_comment = 1
"colo sonokai
set background=dark
hi CursorLine ctermfg=NONE ctermbg=NONE cterm=NONE
hi Normal ctermfg=NONE ctermbg=234 guifg=NONE
hi LineNr ctermfg=yellow ctermbg=236 cterm=NONE
" hi Terminal ctermfg=NONE ctermfg=NONE cterm=NONE
hi EndOfBuffer ctermbg=NONE
" visual mode bg
set foldmethod=indent " 设置默认折叠方式为缩进
set foldlevelstart=99 " 每次打开文件时关闭折叠

" hi Normal ctermfg=252 ctermbg=none "背景透明
" au FileType gitcommit,gitrebase let g:gutentags_enabled=0
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

let g:python_highlight_all = 1
" +================================ 可视化缩进 =====================================+ "

let g:indent_guides_enable_on_vim_startup = 0  " 默认关闭
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进

" 关闭方向键, 强迫自己用 hjkl vim禁用方向键
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" 空格t  加载配置文件
"map <leader>t :source $MYVIMRC<CR>


" 定义快捷键到行尾部和首部
nmap HH ^
nmap L $

" Resize splits with arrow keys(设置窗口上下左右大小)
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

" 解决终端下配色方案异常
let &t_ut=''


"语法高亮
syntax on

map s <nop>
map S :w<CR>
map Q :q<CR>
map QQ :q!<CR>

" <C-;>  为<Enter>
map <C-m> <CR>
" ctrl + [  换为 Esc 
map <C-[> <Esc>
inoremap <silent> jk <Esc> 
"将jk映射到Esc

"字到窗口会 换行
set wrap 

"显示行号
set number
set relativenumber

" 在光标下显示一条线
"set  cursorline  

" 显示输入
set  showcmd

" 在vim 的 ： 下执行命令 
set wildmenu

" 高亮搜索
set hlsearch

" 边搜索边高亮
set incsearch

"去掉搜索的高亮
exec "nohlsearch"

" 在搜索中 ， 忽略大小写  
set ignorecase 

" 智能大小写
set  smartcase 

let mapleader = " "


" 快速移动光标
noremap U 5k
noremap D 5j

" 搜索时会高亮，空格+回车 取消 高亮 
noremap <LEADER><CR> :nohlsearch<CR>

" i 和 k 互换
"noremap i k
"noremap k i


" 分屏
map sl  :set splitright<CR>:vsplit<CR>
map sh  :set nosplitright<CR>:vsplit<CR>
map si  :set nosplitbelow<CR>:split<CR>
map sj  :set splitbelow<CR>:split<CR>

" 光标移动
map <LEADER>h <C-w>h
map <LEADER>i <C-w>k
map <LEADER>j <C-w>j
map <LEADER>l <C-w>l

"  标签页
"   :w 可以重新命名
"创建新的窗口
map <LEADER>t :tabe<CR>
map th :-tabnext<CR> 
map tl :+tabnext<CR>

" 插件
call plug#begin('~/.config/nvim/plugged')

" 配置
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'connorholyday/vim-snazzy'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'zchee/deoplete-jedi'
Plug 'junegunn/vim-easy-align'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'https://github.com/vim-scripts/fcitx.vim.git'
Plug 'Yggdroot/indentLine'
Plug 'crusoexia/vim-monokai'
Plug 'luochen1990/rainbow'
Plug 'scrooloose/nerdcommenter'
Plug 'mhinz/vim-startify'  " 可以显示历史文件
Plug 'kien/ctrlp.vim'  " 文件模糊搜索器
Plug 'easymotion/vim-easymotion' " 使用ss 查找两个字母并跳转   查找单词并跳转 快速定位，文件位置任我行
Plug 'RRethy/vim-illuminate'  " 显示光标下当前单词的其他用法
Plug 'AndrewRadev/splitjoin.vim' " 在单行和多行代码形式之间切换
Plug 'wellle/tmux-complete.vim'


" Git
Plug 'junegunn/gv.vim'  " 查看提交记录
Plug 'tpope/vim-fugitive'  " git插件
Plug 'theniceboy/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
Plug 'fszymanski/fzf-gitignore', { 'do': ':UpdateRemotePlugins' }

Plug 'airblade/vim-gitgutter'  " vim显示文件变动


" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown'] }
Plug 'theniceboy/bullets.vim'

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'pangloss/vim-javascript', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'jelera/vim-javascript-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'uiiaoo/java-syntax.vim'   " java 语法高亮 
" Python
Plug 'tmhedberg/SimpylFold', { 'for' :['python', 'vim-plug'] }
Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
"Plug 'vim-scripts/indentpython.vim', { 'for' :['python', 'vim-plug'] }
"Plug 'plytophogy/vim-virtualenv', { 'for' :['python', 'vim-plug'] }
Plug 'tweekmonster/braceless.vim'
Plug 'vim-scripts/indentpython.vim' " python缩进脚本

" Debugger
Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-c --enable-python '}

" Plug 'tpope/vim-surround'
" Plug 'gcmt/wildfire.vim'

Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'gcmt/wildfire.vim' " in Visual mode, type k' to select all text in '', or type k) k] k} kp

Plug 'mg979/vim-visual-multi', {'branch': 'master'}  " 多光标 

" Plug 'mg979/vim-xtabline'   "顶栏美化

Plug 'mbbill/undotree'   " 查看文件历史  <F3>

" Taglist
Plug 'liuchengxu/vista.vim'   " 查看函数列表  T 

" " Find & Replace
Plug 'brooth/far.vim', { 'on': ['F', 'Far', 'Fardo'] }   " 查找与替换 

" Vim Applications
Plug 'itchyny/calendar.vim'   " \ \	显示时钟  \ c	显示日历 

Plug 'junegunn/goyo.vim'

Plug 'itchyny/vim-cursorword'   " 同单词 出现 下划线

" Other useful utilities
Plug 'lambdalisue/suda.vim' " do stuff like :sudowrite
call plug#end()


" java-script 
" highlight link JavaIdentifier NONE   不使用高亮


" ===
" === suda.vim
" ===
"没有加 sudo 时， :sw   :q
cnoreabbrev sudowrite w suda://%
cnoreabbrev sw w suda://%



" ===
" === goyo
" ===
" gy:  专心编程  
map <LEADER>gy :Goyo<CR>

" ===
" === vim-calendar
" ===
"noremap \c :Calendar -position=here<CR>
noremap \\ :Calendar -view=clock -position=here<CR>
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
augroup calendar-mappings
	" diamond cursor
	autocmd FileType calendar nmap <buffer> u <Plug>(calendar_up)
	autocmd FileType calendar nmap <buffer> n <Plug>(calendar_left)
	autocmd FileType calendar nmap <buffer> e <Plug>(calendar_down)
	autocmd FileType calendar nmap <buffer> i <Plug>(calendar_right)
	autocmd FileType calendar nmap <buffer> <c-u> <Plug>(calendar_move_up)
	autocmd FileType calendar nmap <buffer> <c-n> <Plug>(calendar_move_left)
	autocmd FileType calendar nmap <buffer> <c-e> <Plug>(calendar_move_down)
	autocmd FileType calendar nmap <buffer> <c-i> <Plug>(calendar_move_right)
	autocmd FileType calendar nmap <buffer> k <Plug>(calendar_start_insert)
	autocmd FileType calendar nmap <buffer> K <Plug>(calendar_start_insert_head)
	" unmap <C-n>, <C-p> for other plugins
	autocmd FileType calendar nunmap <buffer> <C-n>
	autocmd FileType calendar nunmap <buffer> <C-p>
augroup END



" ===
" === Far.vim
" ===
" 按下 SPACE f r 在工作目录中搜索
noremap <LEADER>f :F  **/*<left><left><left><left><left>
let g:far#mapping = {
		\ "replace_undo" : ["l"],
		\ }




" ===
" === Vista.vim
" ===
noremap <LEADER>v :Vista!!<CR>
noremap <c-t> :silent! Vista finder coc<CR>
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'coc'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
" function! NearestMethodOrFunction() abort
" 	return get(b:, 'vista_nearest_method_or_function', '')
" endfunction
" set statusline+=%{NearestMethodOrFunction()}
" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

let g:scrollstatus_size = 15





" ===
" === Undotree
" ===
" e	更老的记录   u	更新的记录
noremap <F4> :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
    nmap <buffer> u <plug>UndotreeNextState
    nmap <buffer> e <plug>UndotreePreviousState
    nmap <buffer> U 5<plug>UndotreeNextState
    nmap <buffer> E 5<plug>UndotreePreviousState
endfunc




" ===
" === xtabline
" ===
" to 开关循环标签页模式   \p 显示当前路径  
" let g:xtabline_settings = {}
" let g:xtabline_settings.enable_mappings = 0
" let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
" let g:xtabline_settings.enable_persistance = 0
" let g:xtabline_settings.last_open_first = 1
" noremap to :XTabCycleMode<CR>
" noremap \p :echo expand('%:p')<CR>
" let s:save_cpo = &cpo
" set cpo&vim





"mg979/vim-visual-multi 多光标 
"C-k  选中一个单词， C-k 再选中下一个单词 
"Ctrl-Down/Ctrl-Up   向上向下 选中 光标  
"按n / N获取下一个/上一个出现的位置
" 按q跳过当前并获得下一次出现
"按Q删除当前光标/选择
" 要按两次 <Esc> 才退出 多光标 模式 
let g:VM_leader                     = {'default': ',', 'visual': ',', 'buffer': ','}
let g:VM_maps                       = {}
let g:VM_maps['Find Under']         = '<C-k>'
let g:VM_maps['Find Subword Under'] = '<C-k>'




" 'gcmt/wildfire.vim'  
" 按 enter 选中代码快 

" ===
" ===  tpope/vim-surround 
" ===
" 在选中代码块时，可视化模式下  按下 S " 
"   改符号 ：  cs" '   将”改为’ 
" 添加符号  ysiw[ ,  ysiw" 
"
" " === vim-fugitive  
" ===
nnoremap gb :Gblame<CR>

" ===
" === vim-easymotion
" ===
nmap ss <Plug>(easymotion-s2)



" ==
" == GitGutter  (显示文件变动)
" ==
" H	在当前行显示 Git 代码块
" SPACE g -	去往上一个 Git 代码块
" SPACE g +	去往下一个 Git 代码块
" SPACE g f	折叠所有除代码块以外的行
let g:gitgutter_signs = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_preview_win_floating = 1
autocmd BufWritePost * GitGutter
nnoremap <LEADER>gf :GitGutterFold<CR>
nnoremap H :GitGutterPreviewHunk<CR>
nnoremap <LEADER>g- :GitGutterPrevHunk<CR>
nnoremap <LEADER>g= :GitGutterNextHunk<CR>

" ===
" === vim-illuminate
" ===
let g:Illuminate_delay = 250
hi illuminatedWord cterm=undercurl gui=undercurl

" ===
" === vim-markdown-toc
" ===
"let g:vmt_auto_update_on_save = 0
"let g:vmt_dont_insert_fence = 1
let g:vmt_cycle_list_item_markers = 1
let g:vmt_fence_text = 'TOC'
let g:vmt_fence_closing_text = '/TOC'
" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
            \ 'mkit': {},
            \ 'katex': {},
            \ 'uml': {},
            \ 'maid': {},
            \ 'disable_sync_scroll': 0,
            \ 'sync_scroll_type': 'middle',
            \ 'hide_yaml_meta': 1
            \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'


" ===
" === Markdown Settings
" ===
" Snippets
""source $XDG_CONFIG_HOME/nvim/md-snippets.vim
"source ~/.config/nvim/md-snippets.vim
" auto spell
autocmd BufRead,BufNewFile *.md setlocal spell




" nerdcommenter 注释插件
"add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" python 自动的会多加一个空格
au FileType python let g:NERDSpaceDelims = 0
 
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
 
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
 
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
 
" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
 
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
 
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
 
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


" airline 配置
" 设置状态栏   <LEADER> number 是窗口的切换
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme = 'desertink'  " 主题
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
       \ '0': '0 ',
       \ '1': '1 ',
       \ '2': '2 ',
       \ '3': '3 ',
       \ '4': '4 ',
       \ '5': '5 ',
       \ '6': '6 ',
       \ '7': '7 ',
       \ '8': '8 ',
       \ '9': '9 '
       \}
" 设置切换tab的快捷键 <\> + <i> 切换到第i个 tab
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
" 设置切换tab的快捷键 <\> + <-> 切换到前一个 tab
nmap <leader>- <Plug>AirlineSelectPrevTab
" 设置切换tab的快捷键 <\> + <+> 切换到后一个 tab
nmap <leader>+ <Plug>AirlineSelectNextTab
" 设置切换tab的快捷键 <\> + <q> 退出当前的 tab
nmap <leader>q :bp<cr>:bd #<cr>
" 修改了一些个人不喜欢的字符
if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = "CL" " current line
let g:airline_symbols.whitespace = '|'
let g:airline_symbols.maxlinenr = 'Ml' "maxline
let g:airline_symbols.branch = 'BR'
let g:airline_symbols.readonly = "RO"
let g:airline_symbols.dirty = "DT"
let g:airline_symbols.crypt = "CR" 


"rainbow 配置
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}


"indentLine 配置
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进

"monokai 主题
colo monokai


"Deoplete 的使用 自动补全
"可以使用 Ctrl + N 以及 Ctrl + P 在列表项目中进行切换。
"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"切换 vim-airline 主题
"vim-airline 提供了很多主题来个性化状态栏，不同主题的样子可以参见这里。更改vim-airline 主题方式很简单，首先安装插件vim-airlinetheme:
"
"Plug 'vim-airline/vim-airline-themes'
"然后，在 Nvim 配置文件中，加入以下设置，
"
"let g:airline_theme='<theme>' " <theme> 代表某个主题的名称



"nerdtree  的配置 
map <C-n> :NERDTreeToggle<CR>
" autocmd vimenter * NERDTree  "自动开启Nerdtree
let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
"打开vim时如果没有文件自动打开NERDTree
 autocmd vimenter * if !argc()|NERDTree|endif
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 设置树的显示图标
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
let g:NERDTreeShowLineNumbers=0 " 是否显示行号
let g:NERDTreeHidden=0     "不显示隐藏文件
""Making it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nnoremap <F3> :NERDTreeToggle<CR> " 开启/关闭nerdtree快捷键

" 安装coc 插件 
let   g:coc_global_extensions = [ 
    \'coc-json', 
    \'coc-vimlsp',
    \'coc-python', 
    \'coc-java',
    \'coc-highlight',
    \'coc-marketplace',
    \'coc-markdownlint',
    \'coc-pyright', 
    \'coc-sh', 
    \'coc-explorer',
    \'coc-snippets',
    \ 'coc-actions',
	\ 'coc-css',
	\ 'coc-diagnostic',
	\ 'coc-explorer',
	\ 'coc-flutter-tools',
	\ 'coc-gitignore',
	\ 'coc-html',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-prettier',
	\ 'coc-pyright',
	\ 'coc-python',
	\ 'coc-snippets',
	\ 'coc-sourcekit',
	\ 'coc-stylelint',
	\ 'coc-syntax',
	\ 'coc-tasks',
	\ 'coc-todolist',
	\ 'coc-translator',
	\ 'coc-tslint-plugin',
	\ 'coc-tsserver',
	\ 'coc-vetur',
	\ 'coc-vimlsp',
	\ 'coc-yaml',
	\ 'coc-yank']

 "" 按Tab键补全 
 "inoremap <silent><expr> <TAB>
       "\ pumvisible() ? "\<C-n>" :
       "\ <SID>check_back_space() ? "\<TAB>" :
       "\ coc#refresh()
 "inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
 "
 "function! s:check_back_space() abort
   "let col = col('.') - 1
   "return !col || getline('.')[col - 1]  =~# '\s'
 "endfunction
 "
 "
 "" Ctrl + 空格 查看 补全
 "inoremap <silent><expr> <c-space> coc#refresh() 
 "
 ""  按 空格 +  -  查看 在哪的 代码 报错 
 "nmap <silent> <LEADER>-   <Plug>(coc-diagnostic-prev)
 "nmap <silent> <LEADER>+  <Plug>(coc-diagnostic-next)
 "
 "" 当光标放在同一个词中，相同的词会高亮
 "autocmd CursorHold * silent call CocActionAsync('highlight')   
 "
 ""右键选中代码 进行 操作 
 "xmap <leader>a  <Plug>(coc-codeaction-selected)
 "nmap <leader>a  <Plug>(coc-codeaction-selected)
 "
 
" if hidden is not set, TextEdit might fail.
set hidden
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup
 
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
 
" don't give |ins-completion-menu| messages.
set shortmess+=c
 
" always show signcolumns
set signcolumn=yes
 
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
 
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
 
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
 
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
 
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
 
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
 
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
 
" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
 
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
 
" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
 
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
 
" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
 
" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)
nmap tt :CocCommand explorer<CR> 
" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)


" coc-translator
nmap sc  <Plug>(coc-translator-p)


" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
 
" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
 
" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')


 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quickly Run
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"map <F5> :call CompileRunGcc()<CR>CR
"func! CompileRunGcc()
    "exec "w" 
    "if &filetype == 'c' 
        "exec '!g++ % -o %<'
        "exec '!time ./%<'
    "elseif &filetype == 'cpp'
        "exec '!g++ % -o %<'
        "exec '!time ./%<'
    "elseif &filetype == 'python'
        "exec '!time python %'
    "elseif &filetype == 'sh'
        ":!time bash %
    "elseif &filetype == 'java'
	    ":
    "endif                                                                              
"endfunc 
" <F5> 保存并运行  <F6> 运行
map <F5> :call CompileCode()<CR>
imap <F5> <ESC>:call CompileCode()<CR>
vmap <F5> <ESC>:call CompileCode()<CR>
map <F6> :call RunResult()<CR>
func! CompileGcc()
    exec "w"
    let compilecmd="!gcc "
    let compileflag="-o %< "
    if search("mpi\.h") != 0
        let compilecmd = "!mpicc "
    endif
    if search("glut\.h") != 0
        let compileflag .= " -lglut -lGLU -lGL "
    endif
    if search("cv\.h") != 0
        let compileflag .= " -lcv -lhighgui -lcvaux "
    endif
    if search("omp\.h") != 0
        let compileflag .= " -fopenmp "
    endif
    if search("math\.h") != 0
        let compileflag .= " -lm "
    endif
    exec compilecmd." % ".compileflag
endfunc
func! CompileGpp()
    exec "w"
    let compilecmd="!g++ "
    let compileflag="-o %< "
    if search("mpi\.h") != 0
        let compilecmd = "!mpic++ "
    endif
    if search("glut\.h") != 0
        let compileflag .= " -lglut -lGLU -lGL "
    endif
    if search("cv\.h") != 0
        let compileflag .= " -lcv -lhighgui -lcvaux "
    endif
    if search("omp\.h") != 0
        let compileflag .= " -fopenmp "
    endif
    if search("math\.h") != 0
        let compileflag .= " -lm "
    endif
    exec compilecmd." % ".compileflag
endfunc

func! RunPython()
        exec "!python %"
endfunc
func! CompileJava()
    exec "!javac %"
endfunc


func! CompileCode()
        exec "w"
        if &filetype == "cpp"
                exec "call CompileGpp()"
        elseif &filetype == "c"
                exec "call CompileGcc()"
        elseif &filetype == "python"
                exec "call RunPython()"
        elseif &filetype == "java"
                exec "call CompileJava()"
        endif
endfunc

func! RunResult()
        exec "w"
        if search("mpi\.h") != 0
            exec "!mpirun -np 4 ./%<"
        elseif &filetype == "cpp"
            exec "! ./%<"
        elseif &filetype == "c"
            exec "! ./%<"
        elseif &filetype == "python"
            exec "call RunPython"
        elseif &filetype == "java"
            exec "!java %<"
        endif
endfunc

