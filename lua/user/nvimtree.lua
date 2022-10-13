vim.g.loaded = 1                 -- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrwPlugin = 1     
require("nvim-tree").setup({
  view = {
    adaptive_size = true,
	relativenumber = true,
	number = true,
  },
  filters = {
    dotfiles = false,
  },
  renderer = {
    highlight_git = true,
  },
  git = {
    ignore = false,
  }
})
