return {
  'petertriho/nvim-scrollbar',
  config = function()
    require("scrollbar").setup({
      handle = {
        text = "  ",
      },
      marks = {
        Cursor = { text = "◀▶" },
        Search = { text = { "--", "==" } },
        Error = { text = { "--", "==" } },
        Warn = { text = { "--", "==" } },
        Info = { text = { "--", "==" } },
        Hint = { text = { "--", "==" } },
        Misc = { text = { "--", "==" } },
      }
    })
    -- require('gitsigns').setup()
  end,
}
