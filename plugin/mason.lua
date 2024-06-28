require('mason').setup()

require('mason-lspconfig').setup {
	ensure_installed = { 'volar', 'tsserver' },

	automatic_installation = true
}
