return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.keymap = opts.keymap or {}
      -- Confirm selected item with Tab when completion menu is open.
      opts.keymap["<Tab>"] = { "select_and_accept", "fallback" }

      -- Enable arrow-key navigation for cmdline completions (e.g. command palette).
      opts.cmdline = opts.cmdline or {}
      opts.cmdline.keymap = opts.cmdline.keymap or {}
      opts.cmdline.keymap["<Up>"] = { "select_prev", "fallback" }
      opts.cmdline.keymap["<Down>"] = { "select_next", "fallback" }
    end,
  },
}
