-- require("config.lazy")

vim.cmd("source ~/.vimrc")

-- oil config
require("oil").setup()
-- require("obsidian.nvim").setup()
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.cmd[[colorscheme tokyonight]]

require('plugins')
