-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local out = vim.fn.system({
    "git", "clone", "--filter=blob:none", "--branch=stable",
    "https://github.com/folke/lazy.nvim.git", lazypath,
  })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({ { "Failed to clone lazy.nvim:\n", "ErrorMsg" }, { out, "Warn" } }, true, {})
    vim.cmd("cquit")
  end
end
vim.opt.rtp:prepend(lazypath)

vim.cmd("source ~/.vimrc")

require("lazy").setup(require("plugins"))

-- oil config
require("oil").setup()
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.cmd[[colorscheme tokyonight]]

require("mini.diff").setup({
  sources = {
    require("mini.diff.jj"),
  },
})
