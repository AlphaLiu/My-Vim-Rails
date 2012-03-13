" 不兼容VI键盘，使用vim键盘
  set nocompatible

" 调用Pathogen插件来管理插件 必须在 filetype plugin indent on 之前
call pathogen#runtime_append_all_bundles()

" 文件类型识别
  filetype on
  filetype plugin indent on

" 禁止生成临时文件
  set nobackup
  set noswapfile

" 历史记录数
  set history=50

" 设置编码
  set enc=utf-8

" 设置文件编码
  set fenc=utf-8

" 设置文件编码检测类型及支持格式
  set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

" 设置开启语法高亮
  syntax on

" 显示行号
  set number

" 显示标尺
	set ruler

" 高亮显示匹配的括号
  set showmatch

" 搜索忽略大小写
  set ignorecase

" 查找结果高亮度显示
  set hlsearch
  set incsearch

" tab宽度
	set shiftwidth=2
	set softtabstop=2
	set tabstop=2
	set backspace=2
	set smarttab

	set lbr

"	Auto indent
	set ai

"	Smart indet
	set si

"	C-style indenting
	set cindent

"	Wrap line
	set wrap

" 命令行下按tab键自动完成
  set wildmode=list:full
  set wildmenu

" 设置默认的颜色
  colorscheme molokai 

" 带有如下符号的单词不要被换行分割
  set iskeyword+=_,$,@,%,#,-

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
  set report=0

" Set 7 lines to the curors - when moving vertical..
	set so=7
" The commandbar is 2 high
	set cmdheight=2
" 设置在最上面一行显示当前文件名
	if exists("&showtabline")
		set stal=2
	endif

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
  "set mouse=a
  "set selection=exclusive
  "set selectmode=mouse,key

" Set mapleader
  let mapleader = ","
  let g:mapleader = ","

" 设置自动保存
  imap <F9> <Esc>:up<cr>

" 在不同的窗口移动
  map <C-j> <C-W>j
  map <C-k> <C-W>k
  map <C-h> <C-W>h
  map <C-l> <C-W>l
	map <C-i> <C-W><C-W>

" Tab configuration
	map <leader>tn :tabnew .<cr>
	map <leader>tc :tabclose<cr>
	map <leader>tm :tabn<cr>
	map <leader>tp :tabp<cr>

" Moving fast to front, back and 2 sides ;)
	imap <m-$> <esc>$a
	imap <m-0> <esc>0i
	imap <D-$> <esc>$a
	imap <D-0> <esc>0i

" Fast close the buffer
	nmap <leader>q :bd<cr> 

" Fast saving
	nmap <leader>w :w!<cr>

" Following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"	下面是插件设置区域
"	===================================
" 把 F4 映射到 切换NERDTree插件
  let NERDTreeShowBookmarks = 1
  let NERDChristmasTree = 1
  let NERDTreeWinPos = "left"
	map <F4> :NERDTreeToggle<cr>

" MinibufferExpl
""""""""""""""""""""""""""""""
	let g:miniBufExplModSelTarget = 1
	let g:miniBufExplModSelTarget = 0
	let g:miniBufExplUseSingleClick = 1
	let g:miniBufExplMapWindowNavVim = 1
	let g:miniBufExplMapWindowNavArrows = 1
	let g:miniBufExplMapCTabSwitchBufs = 1


" 设置FuzzyFinder
  map <leader>F :FufFile<CR>
  map <leader>f :FufTaggedFile<CR>
  map <leader>g :FufTag<CR>
  map <leader>b :FufBuffer<CR>

" 设置Color-Sample
	map <leader>1 :NEXTCOLOR<cr>
	map <leader>2 :PREVCOLOR<cr>

" 设置Rubytest
  let g:rubytest_cmd_spec = "rspec -fd %p"
