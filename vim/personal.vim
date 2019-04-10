set noundofile
set nobackup
set noswapfile
set rnu
"�Ʊ��Ϊ4���ո�
set tabstop=4

"��ҳ����ʾ
set shortmess=atI
"��������
set fencs=utf-8,gbk,utf-16,utf-32,ucs-bom

"Vundle����
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'   " solarized theme
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
call vundle#end()            

"���ھ���
function WindowCenterInScreen()
	set lines=9999 columns=9999
	let g:windowsSizeFixX = 58
	let g:windowsSizeFixY = 118
	let g:windowsScaleX = 7.75
	let g:windowsScaleY = 17.0
	let g:windowsPosOldX = getwinposx()
	let g:windowsPosOldY = getwinposy()
	let g:windowsScreenWidth = float2nr(winwidth(0) * g:windowsScaleX) + g:windowsPosOldX + g:windowsSizeFixX
	let g:windowsScreenHeight = float2nr(winheight(0) * g:windowsScaleY) + g:windowsPosOldY + g:windowsSizeFixY
	set lines=30 columns=108
	let g:windowsSizeWidth = float2nr(winwidth(0) * g:windowsScaleX) + g:windowsSizeFixX
	let g:windowsSizeHeight = float2nr(winheight(0) * g:windowsScaleY) + g:windowsSizeFixY
	let g:windowsPosX = ((g:windowsScreenWidth - g:windowsSizeWidth) / 2)
	let g:windowsPosY = ((g:windowsScreenHeight - g:windowsSizeHeight) / 2)
	exec ':winpos ' . g:windowsPosX . ' ' . g:windowsPosY
endfunc
au GUIEnter * call WindowCenterInScreen()


" ����
if has("gui_running")
	set background=dark
	colorscheme solarized
	set guifont=Courier_New:h13:cANSI
endif

set cursorline
set nohlsearch
set number

set splitbelow " �ָ�����Ĵ���λ�ڵ�ǰ�����±�/�ұ�
set splitright

let $LANG='en'

"����ʾ����/�˵���
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b

"ע��
map <C-M> <leader>c<Space>

"NERDTree����
autocmd FileType nerdtree setlocal relativenumber
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 
let NERDTreeShowBookmarks = 1

command! JsonFormat :execute '%!python -m json.tool'
			\ | :execute '%!python -c "import re,sys;chr=__builtins__.__dict__.get(\"unichr\", chr);sys.stdout.write(re.sub(r\"\\\\u[0-9a-f]{4}\", lambda x: chr(int(\"0x\" + x.group(0)[2:], 16)).encode(\"utf-8\"), sys.stdin.read()))"'
			\ | :set ft=javascript
			\ | :1


