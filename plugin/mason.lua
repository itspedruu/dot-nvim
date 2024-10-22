require('mason').setup()

require('mason-lspconfig').setup {
	ensure_installed = { 'volar', 'ts_ls' },

	automatic_installation = true
}
