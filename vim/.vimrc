"Base Options
set number
set relativenumber
set autoindent
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set nobackup noswapfile
set smarttab
set smartindent
set smartcase
set ignorecase
set updatetime=300

"Looks
syntax enable
set cmdheight=1
set hlsearch

"Keymaps
noremap H ^
noremap L $
noremap sf :edit . <CR>
noremap <C-a> :vsplit . <CR>
noremap A :split . <CR>
noremap T :tabedit . <CR>
noremap <Tab> :tabnext <CR>
noremap <S-Tab> :tabprevious <CR>
noremap ;m :noh <CR>

"Filetype Keymaps
autocmd FileType cpp noremap ;q :!g++ -o %:r % && %:r<CR>
