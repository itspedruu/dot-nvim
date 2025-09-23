-- lazy
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

-- leader
vim.g.mapleader = " "

-- plugins
require("lazy").setup({
	{ "neovim/nvim-lspconfig", version = '*' },
	{ "nvim-telescope/telescope.nvim", tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' } },
	{ "numToStr/Comment.nvim", lazy = false },
	"nvim-tree/nvim-tree.lua",
	"nvimtools/none-ls.nvim",
	"MunifTanjim/prettier.nvim",
	"nvim-tree/nvim-web-devicons",
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	"nvim-lualine/lualine.nvim",
	"lewis6991/gitsigns.nvim",
	"EdenEast/nightfox.nvim",
	{ "ThePrimeagen/harpoon", branch = "harpoon2", dependencies = { "nvim-lua/plenary.nvim" } },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"saadparwaiz1/cmp_luasnip",
			"L3MON4D3/LuaSnip",
		}
	},
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	{
		"kkoomen/vim-doge",
		build = function()
			vim.cmd('call doge#install()')
		end,
	},
	"kylechui/nvim-surround"
})

-- options
vim.opt.shiftwidth=4
vim.opt.tabstop=4
vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.signcolumn="yes" 
vim.opt.nuw=1
vim.opt.cc="80"

-- maps
vim.keymap.set('n', '<Esc>', '<cmd>noh<cr>', { silent = true })
vim.keymap.set('n', '<M-j>', '<cmd>cnext<cr>', { silent = true })
vim.keymap.set('n', '<M-k>', '<cmd>cprev<cr>', { silent = true })
