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

vim.g.mapleader = " "

require("lazy").setup({
	"neovim/nvim-lspconfig",
	{ "nvim-telescope/telescope.nvim", tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' } },
	{ "numToStr/Comment.nvim", lazy = false },
	"nvim-tree/nvim-tree.lua",
	"jose-elias-alvarez/null-ls.nvim",
	"MunifTanjim/prettier.nvim",
	"nvim-tree/nvim-web-devicons",
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	"nvim-lualine/lualine.nvim",
	"lewis6991/gitsigns.nvim",
	"EdenEast/nightfox.nvim",
	{ "ThePrimeagen/harpoon", branch = "harpoon2", dependencies = { "nvim-lua/plenary.nvim" } },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }
})

-- options
vim.opt.shiftwidth=4
vim.opt.tabstop=4
vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.signcolumn="yes" 
vim.opt.nuw=1
vim.opt.cc="80"
