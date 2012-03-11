" 启动vim时窗口的大小
  set lines=30 columns=120

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

" 高亮显示匹配的括号
  set showmatch

" 搜索忽略大小写
  set ignorecase

" 查找结果高亮度显示
  set hlsearch
  set incsearch

" tab宽度
  set tabstop=4
  set cindent shiftwidth=4
  set autoindent shiftwidth=4

" 命令行下按tab键自动完成
  set wildmode=list:full
  set wildmenu

" 设置默认的颜色
  colorscheme railscasts

" 带有如下符号的单词不要被换行分割
  set iskeyword+=_,$,@,%,#,-

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
  set report=0

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
  set mouse=a
  set selection=exclusive
  set selectmode=mouse,key

" Set mapleader
  let mapleader = ","
  let g:mapleader = ","

" 设置自动保存
  imap <F9> <Esc>:up<cr>


"	下面是插件设置区域
"	===================================
" 把 F4 映射到 切换NERDTree插件
  let NERDTreeShowBookmarks = 1
  let NERDChristmasTree = 1
  let NERDTreeWinPos = "left"
	map <F4> :NERDTreeToggle<cr>

" 在不同的窗口移动
  map <C-j> <C-W>j
  map <C-k> <C-W>k
  map <C-h> <C-W>h
  map <C-l> <C-W>l

" 设置FuzzyFinder
  map <leader>F :FufFile<CR>
  map <leader>f :FufTaggedFile<CR>
  map <leader>g :FufTag<CR>
  map <leader>b :FufBuffer<CR>

" 设置Color-Sample
  map <silent><F3> :NEXTCOLOR<cr>
  map <silent><F2> :PREVCOLOR<cr>

" 设置Rubytest
  let g:rubytest_cmd_spec = "rspec -fd %p"
