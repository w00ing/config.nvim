return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.keymap = opts.keymap or {}
      -- Confirm selected item with Tab when completion menu is open.
      opts.keymap["<Tab>"] = { "select_and_accept", "fallback" }
    end,
  },
}
