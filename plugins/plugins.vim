call plug#begin()

" Autocompletar {[("'
Plug 'https://github.com/cohama/lexima.vim.git'

" Temas
Plug 'https://github.com/TheNiteCoder/mountaineer.vim'
Plug 'jaredgorski/spacecamp'
Plug 'ayu-theme/ayu-vim'

" Arbol de directorios
Plug 'nvim-tree/nvim-tree.lua'

" Iconos de arbol de directorios
Plug 'nvim-tree/nvim-web-devicons'

" Autocompletado
Plug 'hrsh7th/nvim-cmp'        
Plug 'hrsh7th/cmp-nvim-lsp'   
Plug 'hrsh7th/cmp-buffer'     
Plug 'hrsh7th/cmp-path'       
Plug 'hrsh7th/cmp-cmdline'

" Soporte para snipets
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" Snippets
Plug 'rafamadriz/friendly-snippets'

" Toogle terminal
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

call plug#end()
