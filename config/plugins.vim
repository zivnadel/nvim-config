" Plugins

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/autoload/plugs')

  " Themes
  Plug 'morhetz/gruvbox'
  Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

  " VS Code like intellisense and language-servers
  Plug 'neoclide/coc.nvim'

  " File explorer
  Plug 'nvim-tree/nvim-web-devicons' " for file icons
  Plug 'nvim-tree/nvim-tree.lua'

  " Finder and search (fuzzy finder)
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

  " statusline
  Plug 'nvim-lualine/lualine.nvim'

  " bufferline
  Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }

  " git plugin
  Plug 'tpope/vim-fugitive'

  " for better syntax highlighting
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  " Auto pairs
  Plug 'jiangmiao/auto-pairs'

  " Surround in parentheses, brackets, quotes, XML tags, and more
  Plug 'tpope/vim-surround'

  " Commenting
  Plug 'tpope/vim-commentary'

  " Moving lines
  Plug 'tpope/vim-unimpaired'

  " github copilot
  Plug 'github/copilot.vim'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
