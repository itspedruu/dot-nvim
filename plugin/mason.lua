-- mason
require('mason').setup()

mason_ensure_installed = {
	"prettier"
}

local registry = require('mason-registry')

for _, name in ipairs(mason_ensure_installed) do
	local pkg = registry.get_package(name)
	if not pkg:is_installed() then
		vim.cmd("MasonInstall " .. name)
	end
end

-- mason lsp
require('mason-lspconfig').setup {
	ensure_installed = {
		'vue_ls',
		'vtsls',
		'ts_ls',
		'gopls'
	},

	automatic_installation = true
}
