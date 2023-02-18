-- lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	-- temas
	{'arcticicestudio/nord-vim'},
	{'folke/tokyonight.nvim'},

	-- lualine
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true }
	},

	-- treesitter
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

	-- telescope
	{
		'nvim-telescope/telescope.nvim', version = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	-- extensiones telescope
	{'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
	'nvim-telescope/telescope-media-files.nvim',

	-- autocompletado
	{'neoclide/coc.nvim', branch = 'release'},

	-- comentarios
	"terrortylor/nvim-comment",

	-- tree
	{
		'nvim-tree/nvim-tree.lua',

		version = 'nightly' -- optional, updated every week. (see issue #1193)
	},
})

vim.cmd[[colorscheme nord]]

require'plugins/lualine-config'
require'plugins/treesitter-config'
require'plugins/telescope-config'
require('nvim_comment').setup()
require('nvim-tree').setup()
