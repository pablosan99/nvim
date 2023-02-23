
if !filereadable(system('printf "%s" "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Installing https://github.com/junegunn/vim-plug"
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	!curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"
	autocmd VimEnter * PlugInstall
	autocmd VimEnter * q
endif

" Load vim-plug for plugins
call plug#begin('~/.config/nvim/bundle')
" LSP config
  Plug 'neovim/nvim-lspconfig'
	Plug 'williamboman/nvim-lsp-installer'
	Plug 'tami5/lspsaga.nvim'
	Plug 'folke/lsp-colors.nvim'

	Plug 'nvim-lualine/lualine.nvim'
	Plug 'hoob3rt/lualine.nvim'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'nvim-lua/popup.nvim'
" Telescope
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
" Fuzzy finding
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
" Nerd tree
	Plug 'scrooloose/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Everforest 
  Plug 'sainnhe/everforest'
  Plug 'morhetz/gruvbox'
	Plug 'doums/darcula'
" vim-airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'	
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 
" Coc
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'https://github.com/editorconfig/editorconfig-vim'
	Plug 'https://github.com/tpope/vim-commentary'
	Plug 'https://github.com/tpope/vim-fugitive'
	Plug 'https://github.com/itchyny/vim-gitbranch'
	Plug 'https://github.com/tpope/vim-surround'
	Plug 'https://github.com/tpope/vim-repeat'
	Plug 'https://github.com/sheerun/vim-polyglot'

	Plug 'https://github.com/tpope/vim-speeddating'
	Plug 'https://github.com/bronson/vim-trailing-whitespace'
	Plug 'ryanoasis/vim-devicons'
	Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
	Plug 'christoomey/vim-tmux-navigator'

  Plug 'williamboman/mason.nvim'
	Plug 'https://github.com/hrsh7th/nvim-cmp'
		Plug 'https://github.com/hrsh7th/cmp-nvim-lsp'
		Plug 'https://github.com/hrsh7th/cmp-buffer'
		Plug 'https://github.com/hrsh7th/cmp-path'
		Plug 'https://github.com/hrsh7th/cmp-cmdline'
" For luasnip users.
   Plug 'L3MON4D3/LuaSnip'
   Plug 'saadparwaiz1/cmp_luasnip'
call plug#end()

