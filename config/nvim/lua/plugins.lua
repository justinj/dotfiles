return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  { "stevearc/oil.nvim" },

  { "nvim-mini/mini.diff" },

  {
    url = "https://tangled.org/ronshavit.com/mini.diff.jj",
  },

  {
    "epwalsh/obsidian.nvim",
    version = "*",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("obsidian").setup({
        workspaces = {
          {
            name = "work",
            path = "~/Documents/justin",
          },
        },

        daily_notes = {
          folder = "Daily Notes",
          date_format = "%Y %b %d",
          template = "Daily Note",
          pass_over_todos = true,
        },

        templates = {
          folder = "Templates",
        },

        follow_url_func = function(url)
          vim.fn.jobstart({ "open", url })
        end,
      })
    end,
  },
}
