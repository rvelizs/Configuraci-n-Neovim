" Cargar Plugins
so C:/Users/windows/AppData/Local/nvim/plugins/plugins.vim
so C:/Users/windows/AppData/Local/nvim/lua-tree.lua
so C:/Users/windows/AppData/Local/nvim/cmp.lua
so C:/Users/windows/AppData/Local/nvim/luasnip.lua
so C:/Users/windows/AppData/Local/nvim/lsp_config.lua
so C:/Users/windows/AppData/Local/nvim/toogleterm.lua

" General
set number
set mouse=a
set encoding=utf-8
nnoremap <C-a> ggVG
syntax on

" Tabs 2 espacios
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab

" Guardar Ctrl+s
nmap <c-s> :w<CR>
imap <c-s> <c-o>:w<CR>

" Temas (colores)
":colorscheme mountaineer-grey
"colorscheme spacecamp_lite
"colorscheme mi_tema
" Para AYU
set termguicolors
let ayucolor="dark"
colorscheme ayu

" Nvim Tree
nnoremap <c-b> :NvimTreeToggle<CR>

" Navegacion  de ventanas
nnoremap <s-Left> <C-w>h
nnoremap <s-Right> <C-w>l
nnoremap <s-v> :vsplit<CR>

" Termianl
tnoremap <Esc> <C-\><C-n>
set hidden
