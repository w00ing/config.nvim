return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      opts.indent = opts.indent or {}
      opts.indent.animate = opts.indent.animate or {}
      opts.indent.animate.enabled = false

      opts.picker = opts.picker or {}
      opts.picker.exclude = opts.picker.exclude or {}

      local function ensure(list, value)
        if not vim.tbl_contains(list, value) then
          table.insert(list, value)
        end
      end

      ensure(opts.picker.exclude, "node_modules")
      ensure(opts.picker.exclude, ".DS_Store")
      ensure(opts.picker.exclude, ".git")
      ensure(opts.picker.exclude, ".next")

      opts.picker.actions = opts.picker.actions or {}
      opts.picker.actions.toggle_node_modules = function(picker)
        local exclude = picker.opts.exclude or {}
        if vim.tbl_contains(exclude, "node_modules") then
          exclude = vim.tbl_filter(function(value)
            return value ~= "node_modules"
          end, exclude)
        else
          table.insert(exclude, "node_modules")
        end
        picker.opts.exclude = exclude
        picker.list:set_target()
        picker:find()
      end

      opts.picker.win = opts.picker.win or {}
      opts.picker.win.input = opts.picker.win.input or {}
      opts.picker.win.input.keys = opts.picker.win.input.keys or {}
      opts.picker.win.list = opts.picker.win.list or {}
      opts.picker.win.list.keys = opts.picker.win.list.keys or {}
      opts.picker.win.input.keys["<a-n>"] = { "toggle_node_modules", mode = { "i", "n" }, desc = "Toggle node_modules" }
      opts.picker.win.list.keys["<a-n>"] = { "toggle_node_modules", desc = "Toggle node_modules" }

      opts.picker.sources = opts.picker.sources or {}
      opts.picker.sources.files = vim.tbl_deep_extend("force", opts.picker.sources.files or {}, {
        hidden = true, -- Include hidden files like .env
        ignored = false, -- Include gitignored files
      })
      opts.picker.sources.grep = vim.tbl_deep_extend("force", opts.picker.sources.grep or {}, {
        hidden = true, -- Also search in hidden files
        ignored = false, -- Include gitignored files
      })
    end,
  },
}
