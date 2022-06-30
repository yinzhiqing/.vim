
set nocompatible
filetype off
 "set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'

 " The following are examples of different formats supported.
 " Keep Plugin commands between vundle#begin/end.
 " plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
 " plugin from http://vim-scripts.org/vim/scripts.html
 " Plugin 'L9'
 " Git plugin not hosted on GitHub
 " Plugin 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (i.e. when working on your own plugin)
 " Plugin 'file:///home/gmarik/path/to/plugin'
 " The sparkup vim script is in a subdirectory of this repo called vim.
 " Pass the path to set the runtimepath properly.
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 " Install L9 and avoid a Naming conflict if you've already installed a
 " different version somewhere else.
 " Plugin 'ascenator/L9', {'name': 'newL9'}

 Plugin 'Valloric/YouCompleteMe'

 Plugin 'tomlion/vim-solidity'

 "rust code 
 Plugin 'rust-lang/rust.vim'
 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
 " To ignore plugin indent changes, instead use:
 "filetype plugin on
 "
 " Brief help
 " :PluginList       - lists configured plugins
 " :PluginInstall    - installs plugins; append `!` to update or just
 ":PluginUpdate
 " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
 "
 " see :h vundle for more details or wiki for FAQ
 " Put your non-Plugin stuff after this line
"使用pathogen管理plugin
""call pathogen#runtime_append_all_bundles()
"call pathogen#infect()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Copycat: lulu
" Version: 3.3.3
" Install: 在linux和windows下无需改动配置文件的内容,对应配置文件夹是vim_3.3
"          在linux下在 ~/ 目录下,配置文件名改成 .vimrc,路径为 ~/.vimrc
"         		         配置文件夹名改成 .vim,路径为 ~/.vim
"          在windows下在 $(vim)/ 目录下,配置文件名改成 _vimrc,路径为 Vim/_vimrc
"         	                 配置文件夹名改成 vimfiles,路径为 Vim/vimfiles
" Time:    2014.11.15 (增加ptyhon插件)
" Bug:	   VimPdb 和 lookupfile 的F5冲突 
" Modifty: 去掉了Minbuf和omnicppcomplete提示窗口and Tagbar放到左边
"		   增加pydiction		补全提示
"		   开启pythoncomplete	vim自带的python补全提示
"		   增加VimPdb			调试Python程序
"		   增加pyflakes			Python代码检查
"
"
"索引	
"
"	ctags
"	cscope
"
"函数提示
"	echofunc(2.0)
"	taglist(4.5)
"	Tagbar(2.4.1)支持面向对象+
"
"窗口
"	WinManager(2.3)
"	nerdtree(4.2)
"	MiniBufExplorer(6.3.2)--------------------------------------------------已剔除
"
"智能补全	
"	supertab(2.0)
"	omnicppcomplete(0.41)
"
"其他
"	drawit(11)画图
" 	conqueterm(2.2)vim中打开终端的功能+ 
"	csExplorer(7.0.1)提供列出配色列表的功+
"   calendar.vim(2.5)提供日历的功能，并且可以记笔记+
"   visincr(20)提供生成数列的功能+
"   fencview(4.8)字符编码识别+
"	visincr(20)提供生成数列的功能+  :SO % 后visincr.vba.gz会消失变成visincr.vba
"   cmdline completion(0.04)命令行模式的补全+ 
"	
"
"项目管理插件
"	project(1.4.1)+
"   grep.vim(1.9)工程内查找与替换+
"	bufexplorer(7.3.1)打开历史文件列表以达到快速切换文件+
"   lookupfile(1.8)文件查找+
"   genutils(2.5)底层的lookupfile的功能支持+
"	FuzzyFinder(4.2.2)缓冲器/文件/命令/标签/等浏览器的模糊匹配 +
"   l9(1.1)FuzzyFinder底层依耐+
"
"c/c++ 辅助
"	c.vim(6.0)+
"   stl.vim(0.1)stl语法高亮+
"	stlrefvim(1.0)stl帮助 +
"   a.vim(2.18) .c, .cpp <-->.h快速切换+
"   man.vim（内置）查看系统调用+
"	cscope_vim.vim(cscope映射)+
"	NERD_commenter(2.3.0)提供快速注释/反注释代码块的功能+
"	checksyntax.vba(2.02)语法检查+ (跟lookupfile.vim的F5冲突了，把checksyntax.vimF5改成F6)
" 	auto.vim(2.1)自动排版，可以少打很多空格---------------------------------------------以剔除
"
"python 插件
"	pydiction		补全提示+
"	pythoncomplete	vim自带的python补全提示
"	VimPdb			调试Python程序+
"	pyflakes		Python代码检查+
"
"
" 	+ = 新增加的插件
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"
set formatoptions=tcrqn 	" 自动格式化
set autoindent 			" 继承前一行的缩进方式，特别适用于多行注释
set smartindent 		" 为C程序提供自动缩进
set cindent 			" 使用C样式的缩进
set smarttab 			" 在行和段开始处使用制表符
set tabstop=4 			" 制表符为4
set softtabstop=4 		" 统一缩进为4
set shiftwidth=4
set expandtab 		    " 空格代替制表符
set wrap 			" 不要换行
set fileformats=unix,dos 	" 自动识别UNIX格式和MS-DOS格式
set fileformat=mac
:%retab!	

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置字符集(看情况具体选择)
"
"let &termencoding=&encoding
"set fileencodings=utf-8,gbk,ucs-bom,cp936
"set fileencoding=gb18030
"set fileencodings=utf-8,gb18030,utf-16,big5
"set enc=utf-8
"set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

set fileencoding=gb2312

"Enable filetype plugin
filetype plugin on
filetype indent on

"Plugin https://github.com/scrooloose/nerdtree.git

"文件外部改变自动载入变化后的文件
set autoread

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配 
"
set showmatch 			" 高亮显示匹配的括号
set matchtime=5 		" 匹配括号高亮的时间（单位是十分之一秒）
set scrolloff=10  		" 光标移动到buffer的顶部和底部时保持10行距离
set hlsearch 			" 高亮搜索
"set nowrapscan 		" 查找到文件头或文件尾时停止
set incsearch 			" 边输入边查找
set ignorecase 			" 在搜索的时候忽略大小写
set cmdheight=2


""""""""""""""""""""""""""""""
" Statusline
" """"""""""""""""""""""""""""""
function! CurDir()
 let curdir = substitute(getcwd(), '/home/administrator/', "~/", "g")
 return curdir
endfunction

"Format the statusline
"set statusline=\ %F%m%r%h\ %w\ \ 目录:\ %r%{CurDir()}%h\ \ \ 行号:\%l/%L:%c
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/20%y\ -\ %H:%M\")}   "状态行显示的内容
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
set laststatus=2 		" 总是显示状态行

"set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\”%d/%m/%y\ -\ %H:%M\”)} 
				" 我的状态行显示的内容（包括文件类型和解码）

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件设置
"
set shortmess=atI 		" 启动的时候不显示那个援助索马里儿童的提示`
set report=0 			" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set fillchars=vert:\ ,stl:\ 	" 在被分割的窗口间显示空白，便于阅读 ,stlnc:\(加了这个wm分割兰有\\\\\\\\\\\\\)
set mouse=a 			" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set selection=exclusive
set selectmode=mouse,key



" quickfix模式
"
 autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"
" "代码补全 
"
 set completeopt=preview,menu 
"
"自动补全
"
:inoremap ( ()<ESC>i

:inoremap ) <c-r>=ClosePair(')')<CR>

"by Suzzz：原作者这种设置，输入{会自动补全，并且中间插入一个空行，将光标定位到空行。这对于函数是OK的，但是使用花括号初始化数组、vector时就不方便了。所以改为现在这种。只是补全，然后光标在左右括号中间。
:inoremap { {<CR>}<ESC>O
:inoremap { {}<ESC>i

:inoremap } <c-r>=ClosePair('}')<CR>

:inoremap [ []<ESC>i

:inoremap ] <c-r>=ClosePair(']')<CR>

:inoremap " ""<ESC>i

:inoremap ' ''<ESC>i

function! ClosePair(char)

    if getline('.')[col('.') - 1] == a:char

        return "\<Right>"

    else

        return a:char

    endif

endfunction

filetype plugin indent on 

"打开文件类型检测, 加了这句才可以用智能补全

set completeopt=longest,menu

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"键盘命令
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



nmap <leader>w :w!<cr>

nmap <leader>f :find<cr>



" 映射全选+复制 ctrl+a
"
 map <C-A> ggVGY
"
 map! <C-A> <Esc>ggVGY
"
 map <F12> gg=G
"
" " 选中状态下 Ctrl+c 复制
"
 vmap <C-c> "+y
"
" "去空行  
"
 nnoremap <F2> :g/^\s*$/d<CR> 
"
" "比较文件  
"
 nnoremap <C-F2> :vert diffsplit 
"
" "新建标签  
"
 map <M-F2> :tabnew<CR>  
"
" "列出当前目录文件  
"
 map <F3> :tabnew .<CR>  
"
" "打开树状文件目录  
"
 map <C-F3> \be  


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 一般设置
"
set viminfo+=! 			" 保存全局变量
set history=1000 		" history文件中需要记录的行数
set nocompatible 		" 不要使用vi的键盘模式，而是vim自己的
set foldmethod=syntax
set foldlevel=100  		" 启动vim时不要自动折叠代码
set nu
set fileencodings=utf-8,gbk
set ruler               " 状态栏标尺
set showmatch 			" 高亮显示匹配的括号 
filetype on 			" 侦测文件类型 
set nobackup 			" 不要备份文件（根据自己需要取舍） 
set autowrite           " 自动保存 
set autoread

"set backup
syntax enable
syntax on 			" 语法高亮 
set magic 			" 设置正表达式
set backspace=indent,eol,start 	" 这指明在插入模式下在哪里允许 <BS> 删除光标前面的字符。
				" 逗号分隔的三个值分别指：行首的空白字符，换行符和插入模式开始处之前的字符。
set showcmd 			" 在 Vim 窗口右下角，标尺的右边显示未完成的命令
set noerrorbells 		" 不让vim发出讨厌的滴滴声
set novisualbell 		" 不要闪烁
"set vb t_vb= 			" 没发出声音和闪烁 (在windows下写在配置文件无效必须用命令行输入 或者 重新:source vimrc才有效)
" :inoremap ( ()<ESC>i
" :inoremap { {<CR>}<ESC>O
" :inoremap [ []<ESC>i
" :inoremap " ""<ESC>i
" :inoremap ' ''<ESC>i

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编译链接
"
nmap<Leader>m :wa<CR>:make<CR>:cw<CR><CR>
" 分解说明下，<Leader>m设定快捷键为;m（;由<Leader>指定），:wa<CR>保持所有打开的文档，
" :make<CR>执行make命令，:cw<CR>显示quickfix（如果有编译错误或警告时），
" 最后的<CR>消除make命令执行完成屏幕上“PressENTER or type command to continue”的输入等待提示信息。

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI
"
if has("gui_running") 			" 如果是图形界面   
	set guioptions=m 		" 关闭菜单栏
	set guioptions=t 		" 关闭工具栏
"	set guioptions=L 		" 启动左边的滚动条
"	set guioptions+=r 		" 启动右边的滚动条
"	set guioptions+=b 		" 启动下边的滚动条
	set clipboard+=unnamed 		" 共享剪贴板
	if has("win32")
	       colorscheme torte 	" torte配色方案
	       "set guifont=Consolas:h12 " 字体和大小
	       "set guifont=Consolas:h11 " 字体和大小
	       set guifont=Consolas:h10 " 字体和大小
	       set guifont=Consolas:h9 " 字体和大小
	       set guifont=Consolas:h8 " 字体和大小
	       map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>    " 非插入模式下F11全屏
	       imap <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>   " 插入模式下F11全屏
	endif
endif 

if has('win32')
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "NERD tree
 let NERDChristmasTree=0
 let NERDTreeWinSize=35
 let NERDTreeChDirMode=2
 let NERDTreeIgnore=['\~$']
 let NERDTreeShowBookmarks=1
 let NERDTreeWinPos="left"
 " Automatically open a NERDTree if no files where specified
 autocmd vimenter * if !argc() | NERDTree | endif
 " Close vim if the only window left open is a NERDTree
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
 " Open a NERDTree
 nmap <F5> :NERDTreeToggle<cr>

"YouCompleteMe
""自动开启语义补全
"配置文件
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

let g:ycm_seed_identifiers_with_syntax = 1
"在注释中也开启补全
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
""字符串中也开启补全
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
"开启基于tag的补全，可以在这之后添加需要的标签路径  
let g:ycm_collect_identifiers_from_tags_files = 1
""开始补全的字符数
let g:ycm_min_num_of_chars_for_completion = 2
"补全后自动关闭预览窗口
let g:ycm_autoclose_preview_window_after_completion = 1
""禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
"离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
""语法关键字补全
let g:ycm_seed_identifiers_with_syntax = 1  
"在实现和声明之间跳转,并分屏打开
let g:ycm_goto_buffer_command = 'horizontal-split'
nnoremap <Leader>g :YcmCompleter GoTo<CR>
" 
 "execute pathogen#infect()
 "call pathogen#helptags()
" ————————————————
"
" taglist 
"
let Tlist_Auto_Open=1           "默认打开taglist
let Tlist_Sort_Type = "name"    " 按照名称排序 
let Tlist_Use_Right_Window = 0 		" 在左侧显示窗口
let Tlist_Compart_Format = 1 		" 压缩方式
let Tlist_Exist_OnlyWindow = 1 		" 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_File_Fold_Auto_Close = 0 	" 不要关闭其他文件的tags
let Tlist_Enable_Fold_Column = 0 	" 不要显示折叠树 (鼠标可以点开)
let Tlist_WinWidth = 50                 " taglist窗口宽度
let Tlist_GainFocus_On_ToggleOpen = 0 " 启动时候焦点位置

let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
nmap <silent> <F12> :TlistToggle<cr> 
nmap <silent> <leader>tl :Tlist<cr>
nmap <silent> <F10> :NERDTree<cr>
nmap <silent> <leader>tl :Tlist<cr>
if has("win32") 			
	let Tlist_Ctags_Cmd = '   ctags' "windows下必须空3个字符,否则解析成gs 
else 
	let Tlist_Ctags_Cmd = '/usr/bin/ctags'
endif

"标签列表窗口显示或隐藏不影响整个gvim窗口大小
let Tlist_Inc_Winwidth = 0
"设置tablist插件只显示当前编辑文件的tag内容，而非当前所有打开文件的tag内容
let Tlist_Show_One_File=1


set tags+=~/.vim/tags/systags
set tags+=~/.vim/tags/stltags
set tags+=tags

"set tags=/andes/project/mkdemo/src/tags
""F12生成/更新tags文件
set tags=tags;
set autochdir
 
 
"设置F12快捷键 自动生成当前目录tags文件
function! UpdateTagsFile()
silent !ctags -R --fields=+ianS --extra=+q
endfunction
nmap <F5> :call UpdateTagsFile()<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" netrw
"
let NERDTreeWinPos = 'right'
let g:netrw_winsize = 35
nmap <silent> <leader>fe :Sexplore!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" winmanager 
"
let g:winManagerWindowLayout='NERDTree|BufExplorer'
"let g:winManagerWindowLayout = 'FileExplorer|TagList'
"let g:winManagerWindowLayout = 'FileExplorer'
let g:winManagerWidth = 25
let g:defaultExplorer = 0
nmap wm :WMToggle<cr>
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>
autocmd BufWinEnter \[Buf\ List\] setl nonumber


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" omnicppcomplete
""
"set nocp
"set completeopt=menu "去掉提示窗口"
"filetype plugin on
"let OmniCpp_DefaultNamespaces = ["std"] 	"下面的设置用于当用户预先声明namespace时也能自动补全代码（如使用using std::string） 
"let OmniCpp_NamespaceSearch = 1
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1 
"let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表 
"let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
"let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全 
"let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全 
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
"
filetype plugin indent on
set completeopt=longest,menu
set wildmenu
autocmd FileType python set omnifunc=pythoncomplete#Complete

if has("win32") 				" 设置代码提示窗口的颜色（默认为粉红色) 
"	highlight Pmenu ctermbg=13 guibg=LightGray 
"	highlight PmenuSel ctermbg=7 guibg=DarkBlue guifg=White 
	highlight Pmenu ctermbg=7 guibg=DarkBlue guifg=White
"       highlight PmenuSbar ctermbg=7 guibg=DarkGray 
"	highlight PmenuThumb guibg=Black
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" minibufexpl   
"
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
"let g:miniBufExplorerMoreThanOne=1 		"自动打开


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope
"
if has("cscope")
	set csto=0
	set cst
	set nocsverb
	if filereadable("cscope.out")		" add any database in current directory 	
	    cs add cscope.out
	elseif $CSCOPE_DB != "" 		" else add database pointed to by environment    	
	    cs add $CSCOPE_DB
	endif
	set csverb 				" 这个必须放在后面,不然windows上找不到cscope.out
endif

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR> :cw<CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR> :cw<CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR> :cw<CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR> :cw<CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR> :cw<CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR> :cw<CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR> :cw<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR> :cw<CR>
"nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>  

" Using 'CTRL-spacebar' then a search type makes the vim window
" split horizontally, with search result displayed in
" the new window.  
nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-Space>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>  

" Hitting CTRL-space *twice* before the search type does a vertical
" split instead of a horizontal one  
nmap <C-Space><C-Space>s
	\:vert scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>g
	\:vert scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>c
	\:vert scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>t
	\:vert scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>e
	\:vert scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>i
	\:vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-Space><C-Space>d
	\:vert scs find d <C-R>=expand("<cword>")<CR><CR>  


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" a.vim
" A few of quick commands to swtich between source files and header files quickly. 

" :A switches to the header file corresponding to the current file being edited (or vise versa) 
" :AS splits and switches 
" :AV vertical splits and switches 
" :AT new tab and switches 
" :AN cycles through matches 
" :IH switches to file under cursor 
" :IHS splits and switches 
" :IHV vertical splits and switches 
" :IHT new tab and switches 
" :IHN cycles through matches 
" <Leader>ih switches to file under cursor 
" <Leader>is switches to the alternate file of file under cursor (e.g. on  <foo.h> switches to foo.cpp) 
" <Leader>ihn cycles through matches 
"
" E.g. if you are editing foo.c and need to edit foo.h 
"      simply execute :A and you will be editting foo.h,  
"      to switch back to foo.c execute :A again. 
"
" Can be configured to support a variety of languages. Builtin support for C, C++ and ADA95
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" lookupfile.vim 插件设置
"
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
let g:LookupFile_SortMethod = ""                "关闭对搜索结果的字母排序
"if filereadable("/home/ganquan/linux-2.6.34-rc4/filenametags")                "设置tag文件的名字
"let g:LookupFile_TagExpr ='"/home/ganquan/linux-2.6.34-rc4/filenametags"'
"endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" lookupfile.vim 插件设置
"
let g:tagbar_left = 1 	"Tagbar放到左边

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pydiction
"
let g:pydiction_location = 'D:\Vim\vimfiles\ftplugin\complete-dict'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" pythoncomplete                    
"
"按下 Ctrl+x, Ctrl+o， 就能看到提示列表框，以及对应的 docstring.
"	  Ctrl+n, Ctrl+p 来上下选择
filetype plugin on
autocmd FileType python set omnifunc=pythoncomplete#Complete 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VimPdb
"
"						vimfiles readme.txt
"4. Key Bindings
"-----------------
"
"- F5 - Start/continue debug session of current file.
"- Ctrl-F5 - Start debugging and do not pause at first line
"- Ctrl-Shift-F5 - Start debugging with a given list of parameters.
"- Shift-F5 - Stop the current debug session.
"- Ctrl-Alt-Shift-F5 - Restart the current debug session.
"
"- F2 - Toggle breakpoint.
"- Ctrl-F2 - Toggle conditional breakpoint
"- Shift-F2 - Toggle temporary breakpoint
"- Ctrl-Shift-F2 - Clear all breakpoints in current file
"- Ctrl-Alt-Shift-F2 - Clear all breakpoints in all files
"- F11 - Print condition of conditional breakpoint under the cursor
"
"- F7 - Step into
"- F8 - Step over
"- Ctrl-F8 - Continue running until reaching a return from function
"
"- F6 - Move cursor to currently debugged line.
"- Ctrl-F6 - Change current debugged line to where the cursor is currently placed.
"
"- F9 - Move up in stack frame.
"- F10 - Move down in stack frame.
"
"- F12 - Print stack trace
"
"- F3 - Eval a given expression (in the current debug context)
"- Ctrl-F3 - Exec a given statement (in the current debug context)
"
"- F4 - Eval the current word under the cursor (in the current debug context)
"- Ctrl-F4 - Eval the current WORD under the cursor (in the current debug context)
"
"- <Leader>s - Save current debug session breakpoints to a file.
"- <Leader>l - Load saved breakpoints from a file.
"
"5. Customizing VimPdb
"-----------------------
"
"VimPdb.vim contains several options which allow the user to customize it:
"
"- stack_entry_format: the format used when printing the stack trace (using F12). Possible format keyword arguments:
"	* dir - the directory of the debugged file.
"	* filename - the filename of the debugged file.
"	* line - the current line number.
"	* function - the current function name.
"	* args - the arguments passed to the current function.
"	* return_value - the return value from the function.
"	* source_line - the source code of the current line.
"- stack_entries_joiner: when there's more than one line of stack trace, this string is used to join the lines.
"- stack_entry_prefix: each stack trace entry line has this as its prefix.
"- current_stack_entry_prefix: the current stack trace entry line is prefixed with this string.
"
"- auto_load_breakpoints_file: when this is set to 1, VimPdb will look for a saved breakpoints
"  file (default_breakpoints_filename) in the current directory when loading a new debug session.
"- auto_save_breakpoints_file: when this is set to 1, VimPdb will save all current session breakpoints into a
"  file (default_breakpoints_filename) when exiting Vim.
"- default_breakpoints_filename: the filename used when auto_load_breakpoints_file/auto_saved_breakpoints_file are set.
"
"The following highlighting groups can be changed as well:
"- PdbCurrentLine: the currently debugged line.
"- PdbBreakpoint: a "regular" breakpoint.
"- PdbConditionalBreakpoint: a conditional breakpoint.
"- PdbTemporaryBreakpoint: a temporary breakpoint.
"
"And of course, default key bindings can be modified.
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VimPdb
"
"		:cc，即可进行代码检查
"
"pyflakes-vim uses the output from PyFlakes to highlight errors in your code.
"To locate errors quickly, use quickfix_ commands like :cc.
"
"
"
set foldcolumn=0

set foldmethod=indent 

set foldlevel=3 

set foldenable              " 开始折叠

set foldmethod=manual   " 手动折叠  
""""""""""""""""""""""""""""""
" add Comment
""""""""""""""""""""""""""""""
map <A-/> :call CommentLine()<CR>
  
function CommentLine()
	let isCommented = 0
	let curline = line(".")
	let linestr = getline(curline)
	let linelen = len(linestr)
	let headend = 0

	if linelen > 2 && linestr[0] == '/' && linestr[1] == '*'
		exec "normal! 0xx$xx/"
	else
		exec "normal! 0i"
	endif
endfunction

"""" 高亮显示行列""""""""""
set cursorline
set cursorcolumn

hi CursorLine   cterm=NONE ctermbg=DarkRed ctermfg=White
hi CursorColumn cterm=NONE ctermbg=DarkGray ctermfg=white

"""""撤销次数""""""""""""""""""
set undolevels=5000
execute pathogen#infect()
call pathogen#helptags()

set fileencoding=utf-8
set encoding=utf-8
set clipboard=unnamedplus

"powerline
"set rtp+=/usr/local/lib/python3.8/dist-packages/powerline/bindings/vim/
"set laststatus=0
"set t_Co=256
