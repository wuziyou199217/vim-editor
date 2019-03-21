# Personal VIM Configuration

## Installation - Git

	sh ~/.vim/install.sh
	
## Included Plugins

* [abolish.vim]        :  Plugin for word abbreviation, substitution and coercion

  - MixedCase (`crm`), 
  - camelCase (`crc`), 
  - snake\_case (`crs`), 
  - UPPER\_CASE (`cru`), 
  - dash-case (`cr-`), 
  - dot.case (`cr.`),
  - space case (`cr<space>`), 
  - Title Case (`crt`)

* [ack.vim]            :  Plugin for fast grep

  - map <leader>g :Ack! 
  - map <leader>cc :botright cope<cr>
  - map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
  - map <leader>n :cn<cr>
  - map <leader>p :cp<cr>

* [auto-pairs.vim]            :  Plugin for auto pairs of brackets 

* [commentary.vim]     :  Comment stuff out

  - gcc, gch, gcl : comment the current line
  - gcj           : comment the current and next line
  - gck           : comment the current and previous line

* [expand-region.vim]  :  Plugin for visually selecting increasingly larger regions of text using the same key combination

  - let g:expand_region_text_objects = {
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

  - map K <Plug>(expand_region_expand)
  - map J <plug>(expand_region_shrink)

* [fugitive.vim]       :  Git wrapper so awesome, it should be illegal
* [gitgutter.vim]      :  Plugin which shows a git diff in the "gutter"

  - let g:gitgutter_enabled=0
  - let g:gitgutter_sign_added = '+'
  - let g:gitgutter_sign_modified = 'M'
  - let g:gitgutter_sign_removed = '-'
  - let g:gitgutter_sign_removed_first_line = '-^'
  - let g:gitgutter_sign_modified_removed = 'M-'
  - nnoremap <silent> <leader>d :GitGutterToggle<cr>

* [lightline.vim]      :  Light and configurable statusline/tabline for Vim

  - let g:lightline = {
            \ 'colorscheme': 'powerline',
            \ 'active': {
            \   'left': [ ['mode', 'paste'],
            \             ['fugitive', 'readonly', 'filename', 'modified'] ],
            \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'] ]
            \ },
            \ 'component_expand': {
            \   'syntastic': 'SyntasticStatuslineFlag',
            \ },
            \ 'component_type': {
            \   'syntastic': 'error',
            \ },
            \ 'component': {
            \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
            \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
            \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
            \ },
            \ 'component_visible_condition': {
            \   'readonly': '(&filetype!="help"&& &readonly)',
            \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
            \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
            \ },
            \ 'separator': { 'left': ' ', 'right': ' ' },
            \ 'subseparator': { 'left': ' ', 'right': ' ' }
            \ }

* [markdown.vim]       :  Syntax highlighting and filtype plugin for Markdown file

  - let g:markdown_fenced_languages = ['viml=vim', 'ini=dosini', 'html', 'python', 'bash=sh', 'c++=cpp']
  - let g:markdown_minlines = 100

* [mru.vim]            :  Plugin to manage Most Recently Used (MRU) files

  - let MRU_Max_Entries = 400
  - map <leader>f :MRU<CR>

* [NERD_tree.vim]      :  Tree explorer plugin for Vim

  - let g:NERDTreeWinPos = "right"
  - let NERDTreeShowHidden=0
  - let NERDTreeIgnore = ['\.pyc$', '__pycache__']
  - let g:NERDTreeWinSize=30
  - map <leader>nn :NERDTreeToggle<cr>
  - map <leader>nb :NERDTreeFromBookmark<Space>
  - map <leader>nf :NERDTreeFind<cr>

* [solarized.vim]      :  Vim Solarized Color Scheme

  - colorscheme solarized
  - let g:solarized_termcolors=256
  - set background=light

* [snipmate.vim]       :  Plugin aiming to implement some of TextMate's snippets features in Vim

  - ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
  - snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>

* [surround.vim]       :  Plugin which provides mappings to easily delete, change and add surrounds in pairs

  - cs **old symbol** **new symbol**

* [syntastic.vim]      :  Syntax checking hacks for Vim

  - let g:syntastic_always_populate_loc_list = 1
  - let g:syntastic_auto_loc_list = 1
  - let g:syntastic_check_on_open = 1
  - let g:syntastic_check_on_wq = 0
  - **C++**
  - let g:syntastic_cpp_checkers=['cppcheck']
  - **Python**
  - let g:syntastic_python_checkers=['pyflakes']
  - **Javascript**
  - let g:syntastic_javascript_checkers = ['jshint']
  - **Go**
  - let g:syntastic_auto_loc_list = 1
  - let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

* [Tabular.vim]        :  Plugin for quickly aligning text
* [tagbar.vim]         :  Class outline viewer/browser for Vim

  - nmap tt :TagbarToggle<CR>

* [yankstack.vim]      :  Maintains a history of previous yanks, changes and deletes

  - let g:yankstack_yank_keys = ['y', 'd']
  - nmap <c-p> <Plug>yankstack_substitute_older_paste
 
* [pathogen.vim]       :  Manager of Vim plugins

  - let s:vim_runtime = expand('<sfile>:p:h')."/.."
  - call pathogen#infect(s:vim_runtime.'/plugins/{}')
  - call pathogen#helptags()

## Add your own favorate configuration

In **~/.vim/vimrc** directory, there are two files for configuring: 

### basic.vim
Place to set basic vim settings and add basic mappings and functions

### plugins.vim
Place to add plugin related mappings

You can download your plugins in **~/.vim/bundle**, pathogen will automatically install them

	cd ~/.vim/plugins
	git clone https://github.com/valloric/youcompleteme 

## Uninstall

  rm -rf ~/.vim/*
