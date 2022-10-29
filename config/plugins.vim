" Plugins

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/autoload/plugs')

  " Themes
  Plug 'morhetz/gruvbox'
  Plug 'arcticicestudio/nord-vim'

  " Airline (statusline)
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " VS Code like intellisense and language-servers
  Plug 'neoclide/coc.nvim'

  " Auto pairs
  Plug 'jiangmiao/auto-pairs'

  " Commenting
  Plug 'tpope/vim-commentary'

  " for better syntax highlighting
  Plug 'sheerun/vim-polyglot'

  " FUZZY FINDER file finder
  Plug 'junegunn/fzf'

  " NERDTree file explorer
  Plug 'preservim/nerdtree'

  " git icons in NERDTree
  Plug 'Xuyuanp/nerdtree-git-plugin'

  " Displays file's icons in NERDTree
  Plug 'ryanoasis/vim-devicons'

  " git plugin
  Plug 'tpope/vim-fugitive'

  " indent line
  Plug 'Yggdroot/indentLine'

  " github copilot
  Plug 'github/copilot.vim'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif


