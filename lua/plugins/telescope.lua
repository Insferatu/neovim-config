return {
  {
    "nvim-telescope/telescope.nvim",
    -- config = function()
    --   local bufopts = { noremap = true, silent = true }
    --   local builtin = require("telescope.builtin")
    --   vim.keymap.set("n", "gb", function()
    --     builtin.git_bcommits({
    --       git_command = { "/Users/henadz.varantsou/.config/nvim/gitlog.sh" },
    --     })
    --   end, bufopts)
    --   vim.keymap.set("n", "gj", builtin.git_bcommits, bufopts)
    --
    --   require("telescope").setup({})
    -- end,
    opts = {
      defaults = {
        initial_mode = "normal",
      },
      pickers = {
        git_bcommits = {
          -- git_command = {"git","log","--pretty=oneline","--abbrev-commit"}
          -- git_command = {"git","log","--pretty=medium","--abbrev-commit"}
          git_command = {"/Users/henadz.varantsou/.config/nvim/gitlog.sh"}
          -- git_command = {"pwd"}
        },
        git_commits = {
          -- git_command = {"git","log","--pretty=oneline","--abbrev-commit"}
          -- git_command = {"git","log","--pretty=medium","--abbrev-commit"}
          git_command = {"/Users/henadz.varantsou/.config/nvim/gitlog2.sh"}
        }
      }
    },
  },
}
