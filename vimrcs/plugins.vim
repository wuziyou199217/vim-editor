""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
let s:vim_runtime = expand('<sfile>:p:h')."/.."
call pathogen#infect(s:vim_runtime.'/bundle/{}')
call pathogen#helptags()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#ale#enabled = 1
let g:airline_theme='powerlineish'

""""""""""""""""""""""""""""""
" => LeaderF
""""""""""""""""""""""""""""""
noremap <leader>fi  :LeaderfFile<cr>
noremap <leader>fu :LeaderfFunction<cr>
noremap <leader>fm :LeaderfMru<cr>
noremap <leader>ft :LeaderfTag<cr>
noremap <leader>fl :LeaderfLine<cr>
noremap <leader>fb :LeaderfBuffer<cr>
noremap <leader>fbt :LeaderfBufTag<cr>

let g:Lf_HideHelp = 1
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
let g:Lf_WindowHeight = 0.30
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_CacheDirectory = expand('/tmp/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_IgnoreCurrentBufferName = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=30
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

""""""""""""""""""""""""""""""
" => ultisnips (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger='<c-j>'
let g:UltiSnipsJumpForwardTrigger='<c-b>'
let g:UltiSnipsJumpBackwardTrigger='<c-z>'

""""""""""""""""""""""""""""""
" => Asynchronous Lint Engine (ALE)
""""""""""""""""""""""""""""""
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

let g:ale_linters = {
      \ 'python': ['pylint']
      \}
let g:ale_fixers = {
      \ 'python': ['autopep8', 'yapf', 'autoimport', 'isort']
      \}
let g:ale_warn_about_trailing_whitespace = 0
" let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
" let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
" let g:ale_python_pylint_options = ''

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare

nmap <silent> <C-a>k <Plug>(ale_previous_wrap)
nmap <silent> <C-a>j <Plug>(ale_next_wrap)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Abolish
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MixedCase (`crm`), 
" camelCase (`crc`), 
" snake\_case (`crs`), 
" UPPER\_CASE (`cru`), 
" dash-case (`cr-`), 
" dot.case (`cr.`),
" space case (`cr<space>`), 
" Title Case (`crt`)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => awesome-vim-colorschemes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
colorscheme minimalist

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Commentary
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gcc, gch, gcl : comment the current line
" gcj           : comment the current and next line
" gck           : comment the current and previous line
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-cpp-enhanced-highlight
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-expand-region
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:expand_region_text_objects = {
            \ 'iw'  :0,
            \ 'iW'  :0,
            \ 'i"'  :0,
            \ 'i''' :0,
            \ 'i]'  :1, 
            \ 'ib'  :1, 
            \ 'iB'  :1, 
            \ 'il'  :0, 
            \ 'ip'  :0,
            \ 'ie'  :0, 
            \ 'a]' :1, 
            \ 'ab' :1, 
            \ 'aB' :1, 
            \ 'ii' :0, 
            \ 'ai' :0, 
            \ }

map K <Plug>(expand_region_expand)
map J <plug>(expand_region_shrink)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-signify
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set updatetime=100

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:markdown_fenced_languages = ['viml=vim', 'ini=dosini', 'html', 'python', 'bash=sh', 'c++=cpp']
let g:markdown_minlines = 100

""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""
let g:yankstack_yank_keys = ['y', 'd']
nmap <c-p> <Plug>yankstack_substitute_older_paste

""""""""""""""""""""""""""""""
" => vim-gutentags
""""""""""""""""""""""""""""""
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 /root/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = '/root/.cache/tags'
" 检测 /root/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']


""""""""""""""""""""""""""""""
" => asyncrun.vim
""""""""""""""""""""""""""""""
" 自动打开 quickfix window ，高度为 6
let g:asyncrun_open = 6

" 任务结束时候响铃提醒
let g:asyncrun_bell = 1

" 设定项目目录标记
let g:asyncrun_rootmarks = ['.svn', '.git', '.root', '_darcs', 'build.xml']

" 设置 F10 打开/关闭 Quickfix 窗口
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>

" 编译单个文件
nnoremap <silent> <F9> :AsyncRun gcc -Wall -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>

" 运行编译好的当前文件
nnoremap <silent> <F5> :AsyncRun -raw -cwd=$(VIM_FILEDIR) "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>

" 编译整个项目
nnoremap <silent> <F7> :AsyncRun -cwd=<root> make <cr>

" 运行当前项目
nnoremap <silent> <F8> :AsyncRun -cwd=<root> -raw make run <cr>

" 执行测试
nnoremap <silent> <F6> :AsyncRun -cwd=<root> -raw make test <cr>

" 使用 cmake 更新 Makefile 文件
nnoremap <silent> <F4> :AsyncRun -cwd=<root> cmake . <cr>
