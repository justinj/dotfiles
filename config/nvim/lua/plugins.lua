return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use({
    "epwalsh/obsidian.nvim",
    tag = "*",  -- recommended, use latest release instead of latest commit
    requires = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- see below for full list of optional dependencies 👇
    },
    config = function()
      require("obsidian").setup({
        workspaces = {
          {
            name = "work",
            path = "~/Documents/justin",
          },
        },

        follow_url_func = function(url)
          vim.fn.jobstart({"open", url})  -- Mac OS
        end,
      })
    end,
  })
end)
