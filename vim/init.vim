syntax enable " 启用语法高亮
filetype on " 启用文件类型检测
" abandoned的Buffer隐藏起来，这是vim的设置。
" 如果没有这个设置，修改过的文件需要保存了才能换buffer
" 这会影响全局重命名，因为Vim提示保存因此打断下一个文件的重命名。
set hidden

set number " 启用行号
set history=1000  " 记录历史的行数
set tabstop=4 " 设置tab键为4个空格
set expandtab
set clipboard=unnamed " 使用系统剪贴板，而不是“+”指令
set shiftwidth=4 " 设置当行之间交错时使用4个空格
let mapleader="," " 修改<leader> 键为,


" 设置python路径
" let g:python3_host_prog=expand('~/.virtualenvs/nvim_py3/bin/python')
" let g:python_host_prog=expand('~/.virtualenvs/nvim_py2/bin/python')
"
" 加载插件
source ~/.config/nvim/plug.vim

" 加载插件自定义配置 
runtime! conf/*.vim

" 设置主题方案
set background=dark
" if $COLORTERM == 'truecolor'
if has("termguicolors")
    set termguicolors
else
    set term=xterm
    set t_Co=256
endif
"colorscheme solarized8
colorscheme gruvbox


set hidden " 避免必须保存修改才可以跳转buffer

" buffer快速导航
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>

" 查看buffers
nnoremap <Leader>l :ls<CR>

" 通过索引快速跳转Buffer
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR><Paste>


" 快速移动窗口
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_


" 设置vim透明
"hi Normal guibg=NONE ctermbg=NONE
