local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)
end

vim.keymap.set('n', '<C-n>', "<cmd> NvimTreeToggle <CR>")

require("nvim-tree").setup({
	on_attach = my_on_attach
})
