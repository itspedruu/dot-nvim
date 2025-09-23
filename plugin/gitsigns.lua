require('gitsigns').setup{
	on_attach = function()
		local gitsigns = require('gitsigns')

		vim.keymap.set('n', '<leader>b', gitsigns.toggle_current_line_blame)
		vim.keymap.set('n', '<leader>hd', gitsigns.diffthis)
	end
}
