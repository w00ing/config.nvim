return {
  {
    "christoomey/vim-tmux-navigator",
    keys = {
      { "<M-h>", "<cmd>TmuxNavigateLeft<cr>", mode = "n", desc = "Tmux navigate left" },
      { "<M-j>", "<cmd>TmuxNavigateDown<cr>", mode = "n", desc = "Tmux navigate down" },
      { "<M-k>", "<cmd>TmuxNavigateUp<cr>", mode = "n", desc = "Tmux navigate up" },
      { "<M-l>", "<cmd>TmuxNavigateRight<cr>", mode = "n", desc = "Tmux navigate right" },
      { "<M-\\>", "<cmd>TmuxNavigatePrevious<cr>", mode = "n", desc = "Tmux navigate previous" },
    },
  },
}
