return {
  {
    "tomasky/bookmarks.nvim",
    config = function()
      require("bookmarks").setup({
        -- sign_priority = 8,
        save_file = vim.fn.expand("$HOME/.bookmarks"),
        keywords = {
          ["@t"] = "☑️ ",
          ["@w"] = "⚠️ ",
          ["@f"] = "⛏ ",
          ["@n"] = " ",
        },
        on_attach = function(bufnr)
          local bm = require("bookmarks")
          local map = vim.keymap.set
          map("n", "mm", bm.bookmark_toggle)
          map("n", "mi", bm.bookmark_ann)
          map("n", "mc", bm.bookmark_clean)
          map("n", "mn", bm.bookmark_next)
          map("n", "mp", bm.bookmark_prev)
          map("n", "ml", bm.bookmark_list)
        end,
      })
      require("telescope").load_extension("bookmarks")
    end,
    event = { "VimEnter" },
  },
}
