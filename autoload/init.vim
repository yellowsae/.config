" 语法高亮
syntax on

map s <nop>
map S :w<CR>
map Q :q<CR>
map QQ :q!<CR>
map R :source $MYVIMRC<CR>

" ctrl + c  换为 Esc 
map <C-c> <Esc>

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
noremap E 5j

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
map tu :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>

" 插件
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'

Plug 'connorholyday/vim-snazzy'

Plug 'preservim/nerdtree'

"Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" nerdtree  的配置 
map <C-n> :NERDTreeToggle<CR>

" 安装coc 插件 
"let   g:coc_global_extensions = [ 'coc-json', 'coc-vimlsp', 'coc-python', 'coc-java', 'coc-highlight', 'coc-marketplace', 'coc-markdownlint','coc-pyright', 'coc-sh', 'coc-explorer', 'coc-snippets' ]


" 按Tab键补全 
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Ctrl + 空格 查看 补全
inoremap <silent><expr> <c-space> coc#refresh() 

"  按 空格 +  -  查看 在哪的 代码 报错 
nmap <silent> <LEADER>-   <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>+  <Plug>(coc-diagnostic-next)

" 当光标放在同一个词中，相同的词会高亮
autocmd CursorHold * silent call CocActionAsync('highlight')   

"右键选中代码 进行 操作 
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

